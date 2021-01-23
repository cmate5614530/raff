<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
    <div class="row">
        <div class="col-md-6">
            <?php 
                $value = (isset($pricing_calc_data) ? $pricing_calc_data->other_cost_details : ''); 
                echo render_input('other_cost_details', _l('other_cost_details'), $value, 'text', array('placeholder' => _l('other_cost_details'),'required' => true)); ?>
        </div>
        <div class="col-md-6">
            <?php 
                $value = (isset($pricing_calc_data) ? $pricing_calc_data->other_cost : '');
                echo render_input('other_cost', _l('other_cost'), $value, 'number', array('required' => true,'placeholder' => _l('other_cost'),'step'=>"any"),[],'','base_cal'); ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <?php 
                $value = (isset($install_time) ? $install_time->consumed_time : '');
                echo render_input('consumed_time', _l('installation_consumed_time'), $value, 'number', array('required' => true,'step'=>"any"),[],'','base_cal'); ?>
        </div>

        <div class="col-md-6">
           <?php 
            $value = (isset($pricing_calc_data) ? $pricing_calc_data->ins_cost : '');
            echo render_input('ins_cost', _l('installation_cost'), $value, 'number', array('step'=>"any")); ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <?php $this->load->view('admin/products/product_recipe/select_package'); ?>
        </div>
    </div>

    <div class="table-responsive s_table" id="item-section">
        <table class="table estimate-items-table items table-main-estimate-edit has-calculations no-mtop">
            <thead>
            <tr>
                <th width="8%"><?php echo _l('product_name'); ?></th>
                <th width="4%"><?php echo _l('pre_produced'); ?></th>
                <th width="8%"><?php echo _l('used_qty'); ?></th>
                <th width="8%"><?php echo _l('rate_of_waste'); ?></th>
                <th width="8%"><?php echo _l('default_machine'); ?></th>
                <th width="8%"><?php echo _l('mould_id'); ?></th>
                <th width="8%"><?php echo _l('mould_cavity'); ?></th>
                <th width="8%"><?php echo _l('cycle_time'); ?></th>
                <th width="8%"><?php echo _l('material_cost'); ?></th>
                <th width="8%"><?php echo _l('production_cost'); ?></th>
                <th width="8%"><?php echo _l('expected_profit'); ?></th>
                <th width="8%"><?php echo _l('connected_pair'); ?></th>
                <th width="6%" align="right"><?php echo _l('estimate_table_amount_heading'); ?></th>
                <th align="center"><i class="fa fa-cog"></i></th>
            </tr>
            </thead>
            <tbody>
                <tr class="main">
                    <td>
                        <input type="text" name="product_name" class="form-control">
                        <input type="hidden" name="ingredient_item_id">
                    </td>
                    <td>
                        <div class="checkbox" style="margin-top: 8px;padding-left: 50%">
                            <input type="checkbox" id="pre_produced" name="pre_produced" >
                            <label for="pre_produced"></label>
                        </div>
                    </td>
                    <td>
                        <input type="number" name="used_qty" step="any" class="form-control material" onkeyup="material_cost_calc()" onchange="material_cost_calc()">
                    </td>
                    <td>
                        <input type="number" name="rate_of_waste"  class="form-control material" onkeyup="material_cost_calc()" onchange="material_cost_calc()">
                    </td>
                    <td>
                        <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                            <select data-fieldto="default_machine" data-fieldid="default_machine" name="default_machine" id="default_machine" class="selectpicker form-control default_machine" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">
                            </select>
                        </div>
                    </td>
                    <td>
                        <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                            <select data-fieldto="mould" data-fieldid="mould" name="mould" id="mould" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" onchange="default_machine_and_mould_cavity(this)">
                                <option value=""></option>
                              <?php foreach ($moulds as $key => $mould) {?>
                                <option value="<?php echo $mould['id'];?>"><?php echo $mould['mould_name'];?></option>
                              <?php } ?>
                            </select>
                        </div>
                    </td>
                    <td>
                        <input type="text" readonly name="mould_cavity" class="form-control">
                    </td>
                    <td>
                        <input type="number"  name="cycle_time" class="form-control">
                    </td>
                    <td>
                        <input type="number" readonly name="material_cost" class="form-control">
                    </td>
                    <td>
                        <input type="number" readonly name="production_cost" class="form-control">
                    </td>
                    <td>
                        <input type="number" readonly name="expected_profit" class="form-control">
                    </td>
                    <td>
                        <div class="dropdown bootstrap-select form-control bs3">
                            <select data-fieldto="connected_pair" data-fieldid="connected_pair" name="connected_pair" id="connected_pair" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">
                                <option value=""></option>
                              <?php foreach ($all_products as $key => $product) {?>
                                <option value="<?php echo $product['id'];?>"><?php echo $product['product_name'];?></option>
                              <?php } ?>
                            </select>
                        </div>
                    </td>
                    <td>
                        <input type="hidden" name="ingredient_price" class="ingredient_price">
                        <input type="hidden" name="ingredient_currency_id" class="ingredient_currency_id">
                        <input type="hidden" name="ingredient_currency_rate" class="ingredient_currency_rate">
                        <input type="hidden" name="machine_id_expected" class="machine_id_expected">
                        <input type="hidden" name="machine_profit_expected" class="machine_profit_expected">
                        <input type="hidden" name="machine_power_expected" class="machine_power_expected">
                        <input type="hidden" name="work_hour_capacity" class="work_hour_capacity">
                        <input type="hidden" name="operation_cost" class="operation_cost">
                        <input type="hidden" name="energy_price_value" class="energy_price_value">
                    </td>
                    <td>
                        <?php
                            $new_item = 'undefined';
                            if (isset($product_receipe_item)) {
                                $new_item = true;
                            }
                        ?>
                        <button type="button" onclick="add_item_to_table_product_recipe('undefined','undefined',<?php echo $new_item; ?>); return false;" class="btn pull-right btn-info"><i class="fa fa-check"></i></button>
                    </td>
                </tr>
                <?php if (isset($product_receipe_item)) {
                    $i               = 1;
                    $items_indicator = 'newitems';
                    if (isset($product_receipe_item)) {
                        $items_indicator = 'items';
                    }

                    foreach ($product_receipe_item as $item) {
                        $manual    = false;

                        $option = '<option></option>';
                        foreach ($moulds as $key => $mould) {
                            if($mould['id'] == $item['mould'])
                                $option.='<option value="'.$mould['id'].'" selected>'.$mould['mould_name'].'</option>';
                            else
                                $option.='<option value="'.$mould['id'].'">'.$mould['mould_name'].'</option>';
                        }

                        $default_machine = '<option></option>';
                        foreach ($machine_list as $key => $machine) {
                            if($machine['id'] == $item['default_machine'])
                                 $default_machine.='<option value="'.$machine['id'].'" selected>'.$machine['name'].'</option>';
                        }

                        $connected_pair = '<option></option>';
                        foreach ($all_products as $key => $product) {
                            if($product['id'] == $item['connected_pair'])
                                $connected_pair.='<option value="'.$product['id'].'" selected>'.$product['product_name'].'</option>';
                            else
                                $connected_pair.='<option value="'.$product['id'].'">'.$product['product_name'].'</option>';
                        }
                        $amount = $item['material_cost'] + $item['production_cost'] + $item['expected_profit'];
                        $amount = app_format_number($amount);
                        $table_row = '<tr class="sortable item">';

                        $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][item_id]', $item['id']);

                        $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control" value="' . $item['product_name'] . '"><input type="hidden" name="' . $items_indicator . '[' . $i . '][ingredient_item_id]" value="' . $item['ingredient_item_id'] . '" ></td>';

                        if ($item['pre_produced'] == 1) {

                            $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" checked  name="' . $items_indicator . '[' . $i . '][pre_produced]" data-pre-check value="'.$item['pre_produced'].'"><label ></label></div>';
                        } else {
                            $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" name="' . $items_indicator . '[' . $i . '][pre_produced]" data-pre-check  value="'.$item['pre_produced'].'"><label ></label></div>';

                        }
                        
                        $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][used_qty]" class="form-control material" step="any" value="'.$item['used_qty'].'" data-qty onkeyup = "material_cost_calc_for_added(this)" onchange = "material_cost_calc_for_added(this)"></td>';

                        $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][rate_of_waste]" class="form-control material" value="'.$item['rate_of_waste'].'" onkeyup = "material_cost_calc_for_added(this)" onchange = "material_cost_calc_for_added(this)"></td>';

                        $table_row .= '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                            <select data-fieldto="default_machine" data-fieldid="default_machine" name="'.$items_indicator.'['.$i.'][default_machine] id="default_machine" class="selectpicker form-control default_machine" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'.$default_machine.'</select></div></td>';

                        $table_row .= '<td>
                            <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="'.$items_indicator.'['.$i.'][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" onchange="default_machine_and_mould_cavity_added(this);">'.$option.'</select></div>
                        </td>';

                        $table_row .= '<td><input type="text" readonly name="'.$items_indicator.'['.$i.'][mould_cavity]" class="form-control mould_cavity" value="'.$item['mould_cavity'].'"></td>';

                        $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][cycle_time]" class="form-control cycle_time" onchange="production_cost_calc_for_added(this);        expected_profit_calc_for_added(this);" onkeyup="production_cost_calc_for_added(this);        expected_profit_calc_for_added(this);" value="'.$item['cycle_time'].'"></td>';

                        $table_row .= '<td><input type="number" readonly name="'.$items_indicator.'['.$i.'][material_cost]" class="form-control" data-material-cost value="'.$item['material_cost'].'"></td>';

                        $table_row .= '<td><input type="number" readonly name="'.$items_indicator.'['.$i.'][production_cost]" class="form-control" data-production-cost value="'.$item['production_cost'].'"></td>';

                        $table_row .= '<td><input type="number" readonly name="'.$items_indicator.'['.$i.'][expected_profit]" class="form-control" data-expected-profit value="'.$item['expected_profit'].'"></td>';

                        $table_row .= '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                            <select data-fieldto="connected_pair" data-fieldid="connected_pair" name="'.$items_indicator.'['.$i.'][connected_pair] id="connected_pair" class="selectpicker form-control connected_pair" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'.$connected_pair.'</select></div></td>';

                        $table_row .= '<td class="amount" align="right">' . $amount . '</td>';

                        $table_row .= '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_product_recipe_item(this,' . $item['id'] . '); return false;"><i class="fa fa-times"></i></a></td>';

                        $table_row .='<td>
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][ingredient_price]" class="ingredient_price" value="'.$item['ingredient_price'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][ingredient_currency_rate]" class="ingredient_currency_rate" value="'.$item['ingredient_currency_rate'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][machine_id_expected]" class="machine_id_expected" value="'.$item['machine_id_expected'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][machine_profit_expected]" class="machine_profit_expected" value="'.$item['machine_profit_expected'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][machine_power_expected]" class="machine_power_expected" value="'.$item['machine_power_expected'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][work_hour_capacity]" class="work_hour_capacity" value="'.$item['work_hour_capacity'].'">
                            <input type="hidden" name="'.$items_indicator.'['.$i.'][energy_price_value]" class="energy_price_value" value="'.$item['energy_price_value'].'">
                        </td>';

                        $table_row .= '</tr>';
                        echo $table_row;
                        $i++;
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
    <div class="col-md-8 col-md-offset-4">
        <table class="table text-right">
            <tbody>
                <tr>
                <td><span class="bold"><?php echo _l('estimate_total'); ?> :</span>
                </td>
                <td class="total">
               </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div id="removed-items"></div>
</div>
