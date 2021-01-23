<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <?php echo form_open($this->uri->uri_string(),array('id'=>'products_recipe')); ?>
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($product) ? $product->product_code: ''); 
                                    echo render_input('product_code', _l('product_code'), $value, 'text', array('readonly' => true)); ?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($product) ? $product->product_name: '');
                                    echo render_input('product_name', _l('product_name'), $value, 'text', array('readonly' => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($pack) ? $pack->packing_type: '');
                                    echo render_input('packing_type', _l('packing_type'), $value, 'text', array('readonly' => 'readonly'));?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($pack) ? $pack->pack_capacity: '');
                                    echo render_input('pack_capacity', _l('pack_capacity'), $value, 'number', array('readonly' => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($pack) ? $pack->volume: '');
                                    echo render_input('volume', _l('volume_m3'), $value, 'number', array('readonly' => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    // $value = (isset($product) ? $product->price: ''); 
                                    echo render_input('price', _l('price'), '', 'number', array('placeholder' => _l('pack price'),'readonly'    => 'readonly')); ?>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="panel_s">
                            <?php $this->load->view('admin/products/product_recipe/_add_edit_package'); ?>
                        </div>
                        <div class="btn-bottom-toolbar text-right">
                            <button type="submit" class="btn btn-info pull-right"><?php echo _l('submit'); ?></button>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>
<?php init_tail(); ?>


<script>

    $("body").on('change', 'select[name="item_select"]', function () {
        var itemid = $(this).selectpicker('val');
        if (itemid != '') {
            add_item_to_preview_product_recipe(itemid);
        }
    });

    var productData;
    var defaultMachineData;
    var workHour = 0;
    var engergyPrice = 0 ;
    var operationCost = 0 ;
    var mouldCavity = 0;

    var materialCost = 0;
    var productionCost = 0;
    var expectedProfitCost = 0;
    var installationCost = 0;

    requestGetJSON('manufacturing_settings/get_work_hour').done(function(response) {
        workHour = response.capacity_hours;
    });

    requestGetJSON('manufacturing_settings/get_energy_price').done(function(response) {
        engergyPrice = response.energy_price;
    });

    requestGetJSON('manufacturing_settings/get_operation_cost').done(function(response) {
        operationCost = response.op_cost_per_sec;
    });

    function add_item_to_preview_product_recipe(id) {
        requestGetJSON('warehouses/get_item_by_id_with_currency/' + id).done(function(response) {
            clear_item_preview_values();
            productData = response;
            $('input[name="product_name"]').val(response.product_name);
            $('input[name="ingredient_item_id"]').val(response.id);

            $('input[name=work_hour_capacity]').val(workHour);
            $('input[name=energy_price_value]').val(engergyPrice);
            // $('input[name=operation_cost]').val(operationCost);

            init_selectpicker();
            init_color_pickers();
            init_datepicker();

            $(document).trigger({
                type: "item-added-to-preview",
                item: response,
                item_type: 'item',
            });
        });

    }


    function default_machine_and_mould_cavity(mould)
    {
        var mouldId = $(mould).val();
        default_machine = $(mould).parents('tr').find('.default_machine').children()[0];
        requestGetJSON('manufacturing_settings/get_mould_activity_by_id/' + mouldId).done(function(response) {
            mouldCavity = response.mould_cavity;
            $('input[name="mould_cavity"]').val(mouldCavity)
            production_cost_cal();
            expected_profit_calc();
        });

        requestGetJSON('manufacturing_settings/get_default_machine/' +mouldId).done(function(response) {
            if(response){
                // var option = '<option></option>'
                defaultMachineData = response;
                var option = '<option value="'+response.id+'" selected>'+response.name+'</option>';
                default_machine.innerHTML = '';
                default_machine.innerHTML = option;
                $(mould).parents().find('.default_machine').selectpicker('refresh')

                $('input[name=machine_id_expected]').val(defaultMachineData.id);
                $('input[name=machine_profit_expected]').val(defaultMachineData.profit_expectation);
                $('input[name=machine_power_expected]').val(defaultMachineData.power_usage);
                // $('input[name=work_hour_capacity]').val(workHour);
                // $('input[name=energy_price_value]').val(engergyPrice);
                // $('input[name=operation_cost]').val(operationCost);
            }
            else {
                defaultMachineData = '';
                default_machine.innerHTML = '';
                $(mould).parents().find('.default_machine').selectpicker('refresh')

                $('input[name=machine_id_expected]').val('');
                $('input[name=machine_profit_expected]').val('');
                $('input[name=machine_power_expected]').val('');

            }
            production_cost_cal();
            expected_profit_calc();
        });        
    }

    function default_machine_and_mould_cavity_added(mould)
    {
        var mouldId = $(mould).val();
        default_machine = $(mould).parents('tr').find('.default_machine').children()[0];
        requestGetJSON('manufacturing_settings/get_mould_activity_by_id/' + mouldId).done(function(response) {
            mouldCavity = response.mould_cavity;
            $(mould).parents('tr').find('.mould_cavity').val(mouldCavity)
            production_cost_calc_for_added(mould);
            expected_profit_calc_for_added(mould);
        });
        requestGetJSON('manufacturing_settings/get_default_machine/' +mouldId).done(function(response) {
            if(response){
                defaultMachineData = response;
                var option = '<option value="'+response.id+'" selected>'+response.name+'</option>';
                default_machine.innerHTML = '';
                default_machine.innerHTML = option;
                $(mould).parents('tr').find('.default_machine').selectpicker('refresh');

                $(mould).parents('tr').find('.machine_id_expected').val(defaultMachineData.id);
                $(mould).parents('tr').find('.machine_profit_expected').val(defaultMachineData.profit_expectation);
                $(mould).parents('tr').find('.machine_power_expected').val(defaultMachineData.power_usage);
                $(mould).parents('tr').find('.work_hour_capacity').val(workHour);
                $(mould).parents('tr').find('.energy_price_value').val(engergyPrice);
                // $(mould).parents('tr').find('.operation_cost').val(operationCost);
            }
            else {
                defaultMachineData = '';
                default_machine.innerHTML = '';
                $(mould).parents('tr').find('.default_machine').selectpicker('refresh');
                
                $(mould).parents('tr').find('.machine_id_expected').val('');
                $(mould).parents('tr').find('.machine_profit_expected').val('');
                $(mould).parents('tr').find('.machine_power_expected').val('');
                $(mould).parents('tr').find('.work_hour_capacity').val(workHour);
                $(mould).parents('tr').find('.energy_price_value').val(engergyPrice);
                // $(mould).parents('tr').find('.operation_cost').val(operationCost);
            }
            production_cost_calc_for_added(mould);
            expected_profit_calc_for_added(mould);
        });        
    }

    $('input[name="cycle_time"]').keyup(function(){
        production_cost_cal();
        expected_profit_calc();
    })

    $('#consumed_time').keyup(function(){
        installation_cost_calc();
    })

    function add_item_to_table_product_recipe(data, itemid, merge_invoice, bill_expense) {

        data = typeof (data) == 'undefined' || data == 'undefined' ? get_item_preview_product_recipe() : data;
        if (data.item_id === "" && data.product_name === "") {
            return;
        }
        console.log(data);
        requestGetJSON('products/get_moulds_by_ajax').done(function(res) {
            var option = '<option></option>';
            res.forEach(e => {
                if(e.id == data.mouldid)
                    option += '<option value="'+e.id+'" selected>'+e.mould_name+'</option>';
                else
                    option += '<option value="'+e.id+'">'+e.mould_name+'</option>';
            })
            data.option = option;

            var amount = data.material_cost + data.production_cost + data.expected_profit;
            var table_row = '';
            var item_key = $("body").find('tbody .item').length + 1;

            table_row += '<tr class="sortable item" data-merge-invoice="' + merge_invoice + '" data-bill-expense="' + bill_expense + '">';

            table_row += '<input type="hidden" name="newitems[' + item_key + '][item_id]" value = "' + data.item_id + '"><td class="bold description"><input type="text" name="newitems[' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"><input type="hidden" name="newitems[' + item_key + '][ingredient_item_id]" class="form-control" value="' + data.ingredient_item_id + '"></td>';

            var checks = $('input[name="pre_produced"]');
            if(checks.prop("checked") == true) {

                table_row += '<td><div class="checkbox" style="margin-top: 8px; padding-left: 50%"><input type="checkbox" checked  name="newitems[' + item_key + '][pre_produced]"  data-pre-check value="1" ><label for="pre_produced"></label></div></td>';
            }
            else if(checks.prop("checked") == false) {

                table_row += '<td><div class="checkbox" style="margin-top: 8px; padding-left: 50%"><input type="checkbox"  name="newitems[' + item_key + '][pre_produced]"  data-pre-check value="0" ><label for="pre_produced"></label></div></td>';
            }

            table_row += '<td><input type="number" name="newitems[' + item_key + '][used_qty]" data-qty class="form-control" onkeyup = "material_cost_calc_for_added(this)" step="any" onchange = "material_cost_calc_for_added(this)" value="' + data.used_qty + '"></td>';

            if(checks.prop("checked") == true) {

                table_row += '<td><input type="number" name="newitems[' + item_key + '][rate_of_waste]" class="form-control" onkeyup = "material_cost_calc_for_added(this)" onchange = "material_cost_calc_for_added(this)" value=""></td>';

                // table_row += '<td><input type="text" name="newitems[' + item_key + '][default_machine]" readonly class="form-control" value=""></td>';

                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="default_machine" data-fieldid="default_machine" name="newitems[' + item_key + '][default_machine]" id="default_machine" class="selectpicker form-control default_machine" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98"></select></div></td>';

                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="newitems[' + item_key + '][mould]" id="newitems[' + item_key + '][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98"></select></div></td>';

                table_row += '<td><input type="text" readonly name="newitems[' + item_key + '][mould_cavity]" class="form-control mould_cavity" value=""></td>';

                table_row += '<td><input type="number" name="newitems[' + item_key + '][cycle_time]" class="form-control cycle_time" value=""></td>';
            }
            else if(checks.prop("checked") == false) {

                table_row += '<td><input type="number" name="newitems[' + item_key + '][rate_of_waste]" class="form-control" onkeyup = "material_cost_calc_for_added(this)" value="' + data.rate_of_waste + '"></td>';

                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="default_machine" data-fieldid="default_machine" name="newitems[' + item_key + '][default_machine]" id="default_machine" class="selectpicker form-control default_machine" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98"><option value="'+data.default_machine+'">'+data.default_machine_text+'</option></select></div></td>';

                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="newitems[' + item_key + '][mould]" id="newitems[' + item_key + '][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" onchange="default_machine_and_mould_cavity_added(this);">'+data.option+'</select></div></td>';

                table_row += '<td><input type="text" readonly name="newitems[' + item_key + '][mould_cavity]" class="form-control mould_cavity" value="' + data.mould_cavity + '"></td>';

                table_row += '<td><input type="number" name="newitems[' + item_key + '][cycle_time]" class="form-control cycle_time" value="' + data.cycle_time + '" onchange="production_cost_calc_for_added(this);        expected_profit_calc_for_added(this);" onkeyup="production_cost_calc_for_added(this);        expected_profit_calc_for_added(this);"></td>';
            }

            table_row += '<td><input type="number" readonly name="newitems[' + item_key + '][material_cost]" class="form-control" data-material-cost value="' + data.material_cost + '"></td>';

            if(checks.prop("checked") == true) {

                table_row += '<td><input type="number" readonly name="newitems[' + item_key + '][production_cost]" class="form-control" data-production-cost value=""></td>';

                table_row += '<td><input type="number" readonly name="newitems[' + item_key + '][expected_profit]" class="form-control" data-expected-profit value=""></td>';
            }
            else if(checks.prop("checked") == false) {

                table_row += '<td><input type="number" readonly name="newitems[' + item_key + '][production_cost]" class="form-control" data-production-cost value="' + data.production_cost + '"></td>';

                table_row += '<td><input type="number" readonly name="newitems[' + item_key + '][expected_profit]" class="form-control" data-expected-profit value="' + data.expected_profit + '"></td>';
            }

            table_row += '<td><div class="dropdown bootstrap-select form-control bs3"><select data-fieldto="connected_pair" data-fieldid="connected_pair" name="newitems[' + item_key + '][connected_pair]" id="newitems[' + item_key + '][connected_pair]" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98"><option value="'+data.connected_pair+'">'+data.connected_pair_text+'</option></select></div></td>';

            table_row += '<td class="amount" align="right">' + format_money(amount, true) + '</td>';

            table_row += '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_product_recipe_item(this,' + itemid + '); return false;"><i class="fa fa-trash"></i></a></td>';

            table_row +='<input type="hidden" name="newitems[' + item_key + '][ingredient_price]" class="ingredient_price" value="'+data.ingredient_price+'"><input type="hidden" name="newitems[' + item_key + '][ingredient_currency_id]"  class="ingredient_currency_id" value="'+data.ingredient_currency_id+'"><input type="hidden" name="newitems[' + item_key + '][ingredient_currency_rate]"  class="ingredient_currency_rate" value="'+data.ingredient_currency_rate+'"><input type="hidden" name="newitems[' + item_key + '][machine_id_expected]"  class="machine_id_expected" value="'+data.machine_id_expected+'"><input type="hidden" name="newitems[' + item_key + '][machine_profit_expected]"  class="machine_profit_expected" value="'+data.machine_profit_expected+'"><input type="hidden" name="newitems[' + item_key + '][machine_power_expected]"  class="machine_power_expected" value="'+data.machine_power_expected+'"><input type="hidden" name="newitems[' + item_key + '][work_hour_capacity]"  class="work_hour_capacity" value="'+data.work_hour_capacity+'"><input type="hidden" name="newitems[' + item_key + '][energy_price_value]"  class="energy_price_value" value="'+data.energy_price_value+'">';
            // <input type="hidden" name="newitems[' + item_key + '][operation_cost]"  class="operation_cost" value="'+data.operation_cost+'">

            table_row += '</tr>';

            $('table.items tbody').append(table_row);

            $(document).trigger({
                type: "item-added-to-table",
                data: data,
                row: table_row
            });

            setTimeout(function() {
                calculate_total_recipe();
            }, 15);

            if ($('#item_select').hasClass('ajax-search') && $('#item_select').selectpicker('val') !== '') {
                $('#item_select').prepend('<option></option>');
            }

            init_selectpicker();
            init_datepicker();
            init_color_pickers();
            clear_item_preview_values_product_recipe(data);
            reorder_items();

            $('body').find('#items-warning').remove();
            $("body").find('.dt-loader').remove();
            $('#item_select').selectpicker('val', '');
        });
        
    }

    function get_item_preview_product_recipe() {
        var response = {};

        response.item_id = $('.main input[name="item_id"]').val();
        response.ingredient_item_id = $('.main input[name="ingredient_item_id"]').val();
        response.product_name = $('.main input[name="product_name"]').val();
        response.pre_produced = $('.main input[name="pre_produced"]').prop('checked');
        response.used_qty = $('.main input[name="used_qty"]').val();
        response.rate_of_waste = $('.main input[name="rate_of_waste"]').val();
        response.default_machine = $('.main select[name="default_machine"]').val();
        response.default_machine_text = $('.main select[name="default_machine"]').text();
        response.mouldid = $('.main select[name="mould"]').val();
        response.mould_cavity = $('.main input[name="mould_cavity"]').val();
        response.cycle_time = $('.main input[name="cycle_time"]').val();
        response.material_cost = $('.main input[name="material_cost"]').val();
        response.production_cost = $('.main input[name="production_cost"]').val();
        response.expected_profit = $('.main input[name="expected_profit"]').val();
        response.ins_cost = $('.main input[name="ins_cost"]').val();
        response.consumed_time = $('.main input[name="consumed_time"]').val();

        response.ingredient_price = $('.main input[name="ingredient_price"]').val();
        response.ingredient_currency_rate = $('.main input[name="ingredient_currency_rate"]').val();
        response.ingredient_currency_id = $('.main input[name="ingredient_currency_id"]').val();
        response.machine_id_expected = $('.main input[name="machine_id_expected"]').val();
        response.machine_profit_expected = $('.main input[name="machine_profit_expected"]').val();
        response.machine_power_expected = $('.main input[name="machine_power_expected"]').val();
        response.work_hour_capacity = $('.main input[name="work_hour_capacity"]').val();
        response.energy_price_value = $('.main input[name="energy_price_value"]').val();
        response.connected_pair = $('.main select[name="connected_pair"]').val();
        response.connected_pair_text = $('#connected_pair option:selected').text();
        return response;
    }

    function clear_item_preview_values_product_recipe(data){
        var previewArea = $('.main');
        previewArea.find('input[name="product_name"]').val('');
        previewArea.find('input[name="item_id"]').val('');
        previewArea.find('input[name="ingredient_item_id"]').val('');
        previewArea.find('input[name="product_name"]').val('');
        previewArea.find('input[name="used_qty"]').val('');
        previewArea.find('input[name="rate_of_waste"]').val('');
        previewArea.find('select[name="default_machine"]').selectpicker('val','');
        previewArea.find('select[name="mould"]').selectpicker('val','');
        previewArea.find('input[name="mould_cavity"]').val('');
        previewArea.find('input[name="cycle_time"]').val('');
        previewArea.find('input[name="material_cost"]').val('');
        previewArea.find('input[name="production_cost"]').val('');
        previewArea.find('input[name="expected_profit"]').val('');
        previewArea.find('select[name="connected_pair"]').selectpicker('val','');
    }

    function delete_product_recipe_item(row, itemid) {
        $(row).parents('tr').addClass('animated fadeOut', function() {
            setTimeout(function() {
                $(row).parents('tr').remove();
                calculate_total_recipe();
            }, 50);
        });
        $('#removed-items').append(hidden_input('removed_items[]', itemid));
    }

    function calculate_total_recipe()
    {
        var used_qty, mat_cost = 0, pro_cost = 0, exp_profit = 0, _amount = 0, subtotal = 0, total = 0;
        var other_cost = 0, ins_cost = 0;

        other_cost = parseFloat($('#other_cost').val());
        ins_cost = parseFloat($('#ins_cost').val());

        rows = $('.table.has-calculations tbody tr.item'),
        $.each(rows, function() {
            used_qty = $(this).find('[data-qty]').val();
            mat_cost = $(this).find('[data-material-cost]').val();
            pro_cost = $(this).find('[data-production-cost]').val();
            exp_profit = $(this).find('[data-expected-profit]').val();
            pre_produced = $(this).find('[data-pre-check]').prop('checked')
            if(!pre_produced){
                if(!pro_cost)
                    pro_cost = 0
                if(!exp_profit)
                    exp_profit = 0;
                _amount = parseFloat(mat_cost) + parseFloat(pro_cost) + parseFloat(exp_profit);
            }
            else
                _amount = parseFloat(mat_cost);
            
            subtotal += _amount;
            $(this).find('td.amount').html(format_money(_amount, true));
            row = $(this);
        });
        total = (total + subtotal + other_cost + ins_cost);
        $('.total').html(format_money(total) + hidden_input('total', accounting.toFixed(total, app.options.decimal_places)));
    }

    $(document).ready(function(){
        calculate_total_recipe()
    })

    function material_cost_calc_for_added(row)
    {
        var productIdAdded = $(row).parents('tr').children()[1].lastChild.value;
        var usedQtyAdded = $(row).parents('tr').children()[3].firstChild.value;
        var wasteRateAdded = $(row).parents('tr').children()[4].firstChild.value;

        requestGetJSON('warehouses/get_item_by_id_with_currency/' + productIdAdded).done(function(response) {
            var materialCostAdded = response.price * usedQtyAdded * response.rate * (1+ wasteRateAdded/100);
            console.log('material',materialCostAdded);
            $(row).parents('tr').find('[data-material-cost]').val(materialCostAdded);
            $(row).parents('tr').find('.ingredient_price').val(response.price);
            $(row).parents('tr').find('.ingredient_currency_rate').val(response.rate);
            calculate_total_recipe()
        });
    }

    function production_cost_calc_for_added(row){
        var sel = $(row).parents('tr').children()[6].getElementsByTagName('select')[0];
        var mouldIdAdded = sel.options[sel.selectedIndex].value;
        requestGetJSON('manufacturing_settings/get_default_machine/' +mouldIdAdded).done(function(response) {
            if(response)
                defaultMachineData = response;
        })
        if(mouldIdAdded)
            requestGetJSON('manufacturing_settings/get_mould_activity_by_id/' + mouldIdAdded).done(function(response) {
                mouldCavity = response.mould_cavity;
                if(defaultMachineData)
                {
                    var powerUsage = defaultMachineData.power_usage;
                    var cycleTime = $(row).parents('tr').children()[8].firstChild.value;
                    // var opCostPerSec = $('input[name = "op_cost_per_sec"]').val();
                    var profitExp = defaultMachineData.profit_expectation;
                    productionCost = ((((powerUsage * engergyPrice)/3600)*cycleTime)/mouldCavity + (operationCost*cycleTime)/mouldCavity + ((profitExp/workHour)/(3600/cycleTime*mouldCavity)));
                    $(row).parents('tr').find('[data-production-cost]').val(productionCost);
                    calculate_total_recipe()
                }
            }); 
         
        
    }

    function expected_profit_calc_for_added(row)
    {
        var sel = $(row).parents('tr').children()[6].getElementsByTagName('select')[0];
        var mouldIdAdded = sel.options[sel.selectedIndex].value;
        requestGetJSON('manufacturing_settings/get_default_machine/' +mouldIdAdded).done(function(response) {
            if(response)
                defaultMachineData = response;
        })
        if(mouldIdAdded)
            requestGetJSON('manufacturing_settings/get_mould_activity_by_id/' + mouldIdAdded).done(function(response) {
                mouldCavity = response.mould_cavity;
                if(defaultMachineData)
                {
                    var cycleTime = $(row).parents('tr').children()[8].firstChild.value;
                    var profitExp = defaultMachineData.profit_expectation;
                    expectedProfitCost = (profitExp/(((3600/cycleTime)*mouldCavity)*workHour));
                    $(row).parents('tr').find('[data-expected-profit]').val(expectedProfitCost);
                    calculate_total_recipe()
                }
            }); 
    }

    function material_cost_calc () {
        var usedQty = $('input[name = "used_qty"]').val();
        var wasteRate = $('input[name = "rate_of_waste"]').val();
        
        if(productData)
            materialCost = productData.price * usedQty * productData.rate * (1+wasteRate/100);
        $('input[name="material_cost"]').val(materialCost);
        $('input[name="ingredient_price"]').val(productData.price);
        $('input[name="ingredient_currency_rate"]').val(productData.rate);
        $('input[name="ingredient_currency_id"]').val(productData.currency_id);
        calculate_total_recipe()
    }

    function production_cost_cal(){
        if(defaultMachineData)
        {
            var powerUsage = defaultMachineData.power_usage;
            var cycleTime = $('input[name = "cycle_time"]').val();
            var profitExp = defaultMachineData.profit_expectation;
            // console.log((((powerUsage * engergyPrice)/3600)*cycleTime),(operationCost*cycleTime),((profitExp/workHour)/(3600/cycleTime*mouldCavity)));
            productionCost = ((((powerUsage * engergyPrice)/3600)*cycleTime)/mouldCavity + (operationCost*cycleTime)/mouldCavity + ((profitExp/workHour)/(3600/cycleTime*mouldCavity)));
            $('input[name=production_cost]').val(productionCost);
            calculate_total_recipe()
        }
    }

    function expected_profit_calc(){
        if(defaultMachineData)
        {
            var cycleTime = $('input[name = "cycle_time"]').val();
            var profitExp = defaultMachineData.profit_expectation;
            expectedProfitCost = (profitExp/(((3600/cycleTime)*mouldCavity)*workHour));
            $('input[name=expected_profit]').val(expectedProfitCost);
            calculate_total_recipe()
        }
        
    }

    function installation_cost_calc()
    {
        var installConsumeTime = $('input[name="consumed_time"]').val();
        // var opCostPerSec = $('input[name = "op_cost_per_sec"]').val();
        installationCost = installConsumeTime*operationCost;
        $('input[name="ins_cost"]').val(installationCost);
    }

    $('.base_cal').keyup(function(){
        calculate_total_recipe();
    })
    $('.base_cal').change(function(){
        calculate_total_recipe();
    })


</script>

</body>
</html>

