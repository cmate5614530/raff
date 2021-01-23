<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head();
 ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <?php echo form_open($this->uri->uri_string(),array('id'=>'purchase')); ?>
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <?php
                                    $selected = $purchase_id[0]['id']; 
                                    echo render_select('purchase_phase_id',$purchase_id,array('id','phase'),_l('purchase_phase_id'),$selected); ?>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                <label for="approval" class="control-label" style="margin-bottom:9px;"><?php echo _l('approval');?></label>
                                  <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                                    <select data-fieldto="approval" data-fieldid="approval" name="approval" id="approval" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98">
                                      <option <?php  echo 'selected';?> value="1"><?php echo _l('approval_need');?></option>
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $selected = (isset($purchase_order) ? $purchase_order->acc_list : ''); 
                                    echo render_select('acc_list',$acc_list,array('userid','company'),_l('bought_company_name'),$selected); ?>
                            </div>
                            <div class="col-md-6">
                                <?php
                                    $value = (isset($purchase_order) ? $purchase_order->note : ''); 
                                    echo render_input('note',_l('note'),$value,'text',array('placeholder'=>_l('note'))); ?>
                            </div>
                            <div class="col-md-6">
                                <?php $createdUserNameValue = (isset($created_user_name) ? $created_user_name : "");?>
                                <?php echo render_input('created_user',_l('created_user'),$createdUserNameValue,'text',array('placeholder'=>_l('created_user'),'readonly'    => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php $updatedUserNameValue = (isset($updated_user_name) ? $updated_user_name : "");?>
                                <?php echo render_input('updated_user',_l('last_updated_user'),$updatedUserNameValue,'text',array('placeholder'=>_l('last_updated_user'),'readonly'    => 'readonly')); ?>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
             <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="panel_s">
                            <?php $this->load->view('admin/warehouses/purchase_request/_add_edit_package'); ?>
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
    $(function(){
        appValidateForm($('form'), {
            purchase_phase_id: 'required',
            // acc_list: 'required',
        });
    });

    $("body").on('change', 'select[name="item_select"]', function () {
        var itemid = $(this).selectpicker('val');
        if (itemid != '') {
            add_item_to_preview_purchase_item(itemid);
        }
    });

    function add_item_to_preview_purchase_item(id) {
        requestGetJSON('warehouses/get_item_by_id/' + id).done(function(response) {
            clear_item_preview_values();
            $('input[name="product_name"]').val(response.product_name);
            $('select[name="unit"]').selectpicker('val', response.unit);
            $('select[name="unit"]').prop('disabled',true)
            $('input[name="price"]').val(response.price);
            $('input[name="product_id"]').val(response.id);

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

    function add_item_to_table_purchase_order(data, itemid, merge_invoice, bill_expense) {
        // If not custom data passed get from the preview
        data = typeof(data) == 'undefined' || data == 'undefined' ? get_item_preview_values_purchase_order() : data;
        if (data.item_id === "" && data.product_name === "") { return; }
        console.log('data',data)
        var table_row = '';
        var item_key = $("body").find('tbody .item').length + 1;

        table_row += '<tr class="sortable item" data-merge-invoice="' + merge_invoice + '" data-bill-expense="' + bill_expense + '">';
        table_row += '<td class="dragger">';

        $("body").append('<div class="dt-loader"></div>');
        var regex = /<br[^>]*>/gi;
        
        table_row += '<input type="hidden" class="order" name="newitems[' + item_key + '][order]"><input type="hidden" name="newitems[' + item_key + '][item_id]" value = "' + data.item_id + '">';

        table_row += '</td>';

        table_row += '<td class="bold description"><input type="text" name="newitems[' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"></td>';
        
        table_row += '<td><textarea name="newitems[' + item_key + '][description]" class="form-control" style="height: 36px" rows="2">'+data.description+'</textarea></td>';

        table_row +='<td><input type="number" name="newitems[' + item_key + '][ordered_qty]" class="form-control" value="'+data.ordered_qty+'"></td>';

        table_row +='<td><input type="number" name="newitems[' + item_key + '][received_qty]" class="form-control" readonly value="'+data.received_qty+'"></td>';

        table_row +='<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="newitems[' + item_key + '][unit]" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98"><option value="'+data.unitid+'">'+data.unitname+'</option></select></div><input type="hidden" name="newitems[' + item_key + '][product_id]" class="form-control" value="'+data.product_id+'"></td>';

        table_row +='<td><input type="number" name="newitems[' + item_key + '][volume]" class="form-control" value="'+data.volume+'"></td>';
        table_row +='<td><input type="text" name="newitems[' + item_key + '][notes]" class="form-control" value="'+data.notes+'"></td>';

        table_row += '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_item(this,' + itemid + '); return false;"><i class="fa fa-trash"></i></a></td>';

        table_row += '</tr>';

        $('table.items tbody').append(table_row);

        $(document).trigger({
            type: "item-added-to-table",
            data: data,
            row: table_row
        });

        if ($('#item_select').hasClass('ajax-search') && $('#item_select').selectpicker('val') !== '') {
            $('#item_select').prepend('<option></option>');
        }

        init_selectpicker();
        init_datepicker();
        init_color_pickers();
        clear_item_preview_values_purchase_order();
        reorder_items();
        $('body').find('#items-warning').remove();
        $("body").find('.dt-loader').remove();
        $('#item_select').selectpicker('val', '');
       
    } 

    function get_item_preview_values_purchase_order() {
        var response = {};

        response.item_id = $('input[name="item_id"]').val();
        response.product_id = $('input[name="product_id"]').val();
        response.product_name = $('input[name="product_name"]').val();
        response.description = $('textarea[name="description"]').val();
        response.ordered_qty = $('input[name="ordered_qty"]').val();
        response.received_qty = $('input[name="received_qty"]').val();
        response.unitid = $('select[name="unit"]').val();
        response.unitname = $('select[name="unit"] option:selected').text();
        response.price = $('input[name="price"]').val();
        response.volume = $('input[name="volume"]').val();
        response.notes = $('input[name="notes"]').val();
        response.item_order = $('input[name="item_order"]').val();
        return response;
    }

    function clear_item_preview_values_purchase_order(default_taxes) {
        var previewArea = $('.main');
        previewArea.find('input[name="product_name"]').val('');
        previewArea.find('input[name="description"]').val('');
        previewArea.find('input[name="ordered_qty"]').val('');
        previewArea.find('input[name="received_qty"]').val('');
        previewArea.find('select[name="unit"]').selectpicker('val', '');
        previewArea.find('input[name="price"]').val('');
        previewArea.find('input[name="volume"]').val('');
        previewArea.find('input[name="notes"]').val('');
        previewArea.find('input[name="item_order"]').val('');
    }

    function delete_purchase_item(row, itemid) {
        $(row).parents('tr').addClass('animated fadeOut', function() {
            setTimeout(function() {
                $(row).parents('tr').remove();
                calculate_total();
            }, 50);
        });
        // If is edit we need to add to input removed_items to track activity
        $('#removed-items').append(hidden_input('removed_items[]', itemid));
    }


</script>

</body>
</html>
