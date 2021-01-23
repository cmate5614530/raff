<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <?php echo form_open($this->uri->uri_string(),array('id'=>'packing_list')); ?>
            <div class="col-md-12 transfers">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="panel_s">
                            <?php $this->load->view('admin/warehouses/packing_group/_add_edit_package'); ?>
                        </div>
                        <button type="submit" class="btn btn-info pull-right"><?php echo _l('submit'); ?></button>
                    </div>
                </div>

            </div>

            <?php echo form_close(); ?>
        </div>
    </div>
</div>
<?php init_tail(); ?>

<script type="text/javascript">

    // init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
    
    $("body").on('change', 'select[name="item_select"]', function () {
            var itemid = $(this).selectpicker('val');
            if (itemid != '') {
                add_item_to_preview_packing_group(itemid);
            }
        }); 

    function add_item_to_preview_packing_group(id) {
        requestGetJSON('warehouses/get_item_by_id/' + id).done(function(response) {
            clear_item_preview_values();

            $('input[name="product_name"]').val(response.product_name);
            $('input[name="product_code"]').val(response.product_code);
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

    // Append the added items to the preview to the table as items
    function add_item_to_table_pack_group(data, itemid, merge_invoice, bill_expense) {
        // If not custom data passed get from the preview
        data = typeof(data) == 'undefined' || data == 'undefined' ? get_item_preview_values_pack_group() : data;
        if (data.item_id === "" && data.product_name === "") { return; }

        var table_row = '';
        var item_key = $("body").find('tbody .item').length + 1;

        table_row += '<tr class="sortable item" data-merge-invoice="' + merge_invoice + '" data-bill-expense="' + bill_expense + '">';
        table_row += '<td class="dragger">';

        $("body").append('<div class="dt-loader"></div>');
        var regex = /<br[^>]*>/gi;
        
        table_row += '<input type="hidden" class="order" name="newitems[' + item_key + '][order]">';

        table_row += '</td>';

        table_row += '<input type="hidden" name="newitems[' + item_key + '][item_id]" value = "' + data.item_id + '"><td class="bold description"><input type="text" name="newitems[' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"></td>';
        
        table_row += '<td><input type="text" name="newitems[' + item_key + '][product_code]" class="form-control" value="'+data.product_code+'"></td>';

        var checks = $('input[name="default_pack"]');
        if(checks.prop("checked") == true) {

            table_row += '<td><div class="checkbox checkbox-primary" style="margin-top: 8px"><input type="checkbox" checked  name="newitems[' + item_key + '][default_pack]"  value="1" ><label for="default_pack"><?php echo _l('default_pack'); ?></label></div><input type="hidden" name="newitems[' + item_key + '][product_id]" class="form-control" value="' + data.product_id + '"></td>';
        }
        else if(checks.prop("checked") == false) {

            table_row += '<td><div class="checkbox checkbox-primary" style="margin-top: 8px"><input type="checkbox"  name="newitems[' + item_key + '][default_pack]"  value="1" ><label for="default_pack"><?php echo _l('default_pack'); ?></label></div><input type="hidden" name="newitems[' + item_key + '][product_id]" class="form-control" value="' + data.product_id + '"></td>';
        }
        
        table_row += '<td><a href="#" class="btn btn-danger pull-left" onclick="delete_item(this,' + itemid + '); return false;"><i class="fa fa-trash"></i></a></td>';

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
        clear_item_preview_values_pack_group();
        reorder_items();
        console.log($('#item_select'))
        $('body').find('#items-warning').remove();
        $("body").find('.dt-loader').remove();
        $('#item_select').selectpicker('val', '');
       
    }   

    function get_item_preview_values_pack_group() {
        var response = {};

        response.item_id = $('input[name="item_id"]').val();
        
        response.product_name = $('input[name="product_name"]').val();
        response.product_code = $('input[name="product_code"]').val();

        response.product_id = $('input[name="product_id"]').val();
        response.default_pack = $('input[name="default_pack"]').val();
    
        return response;
    }

    function clear_item_preview_values_pack_group(default_taxes) {
        var previewArea = $('.main');
        previewArea.find('input[name="product_name"]').val('');
        previewArea.find('input[name="product_code"]').val('');
        previewArea.find('input[name="product_id"]').val('');
        previewArea.find('input[name="default_pack"]').val('');
    }
</script>

</body>
</html>
