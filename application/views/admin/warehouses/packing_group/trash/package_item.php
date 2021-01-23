<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade" id="sales_item_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('invoice_item_edit_heading'); ?></span>
                    <span class="add-title"><?php echo _l('invoice_item_add_heading'); ?></span>
                </h4>
            </div>
            <?php echo form_open('admin/invoice_items/manage',array('id'=>'invoice_item_form')); ?>
            <?php echo form_hidden('itemid'); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-warning affect-warning hide">
                            <?php echo _l('changing_items_affect_warning'); ?>
                        </div>
                        <?php echo render_input('description','invoice_item_add_edit_description'); ?>
                        <?php echo render_textarea('long_description','invoice_item_long_description'); ?>
                        <div class="form-group">
                            <label for="rate" class="control-label">
                                <?php echo _l('invoice_item_add_edit_rate_currency',$base_currency->name . ' <small>('._l('base_currency_string').')</small>'); ?></label>
                            <input type="number" id="rate" name="rate" class="form-control" value="">
                        </div>
                        <?php
                        foreach($currencies as $currency){
                            if($currency['isdefault'] == 0 && total_rows(db_prefix().'clients',array('default_currency'=>$currency['id'])) > 0){ ?>
                                <div class="form-group">
                                    <label for="rate_currency_<?php echo $currency['id']; ?>" class="control-label">
                                        <?php echo _l('invoice_item_add_edit_rate_currency', $currency['name']); ?></label>
                                    <input type="number" id="rate_currency_<?php echo $currency['id']; ?>" name="rate_currency_<?php echo $currency['id']; ?>" class="form-control" value="">
                                </div>
                            <?php   }
                        }
                        ?>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label" for="tax"><?php echo _l('tax_1'); ?></label>
                                    <select class="selectpicker display-block" data-width="100%" name="tax" data-none-selected-text="<?php echo _l('no_tax'); ?>">
                                        <option value=""></option>
                                        <?php foreach($taxes as $tax){ ?>
                                            <option value="<?php echo $tax['id']; ?>" data-subtext="<?php echo $tax['name']; ?>"><?php echo $tax['taxrate']; ?>%</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label" for="tax2"><?php echo _l('tax_2'); ?></label>
                                    <select class="selectpicker display-block" disabled data-width="100%" name="tax2" data-none-selected-text="<?php echo _l('no_tax'); ?>">
                                        <option value=""></option>
                                        <?php foreach($taxes as $tax){ ?>
                                            <option value="<?php echo $tax['id']; ?>" data-subtext="<?php echo $tax['name']; ?>"><?php echo $tax['taxrate']; ?>%</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix mbot15"></div>
                        <?php echo render_input('unit','unit'); ?>
                        <div id="custom_fields_items">
                            <?php echo render_custom_fields('items'); ?>
                        </div>
                        <?php echo render_select('group_id',$items_groups,array('id','name'),'item_group'); ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
<script>
    // Maybe in modal? Eq convert to invoice or convert proposal to estimate/invoice
    if(typeof(jQuery) != 'undefined'){
        init_item_js();
    } else {
        window.addEventListener('load', function () {
            var initItemsJsInterval = setInterval(function(){
                if(typeof(jQuery) != 'undefined') {
                    init_item_js();
                    clearInterval(initItemsJsInterval);
                }
            }, 1000);
        });
    }
    // Items add/edit
    function manage_invoice_items(form) {
        var data = $(form).serialize();

        var url = form.action;
        $.post(url, data).done(function (response) {
            response = JSON.parse(response);
            if (response.success == true) {
                var item_select = $('#item_select');
                if ($("body").find('.accounting-template').length > 0) {
                    if (!item_select.hasClass('ajax-search')) {
                        var group = item_select.find('[data-group-id="' + response.item.group_id + '"]');
                        if (group.length == 0) {
                            var _option = '<optgroup label="' + (response.item.group_name == null ? '' : response.item.group_name) + '" data-group-id="' + response.item.group_id + '">' + _option + '</optgroup>';
                            if (item_select.find('[data-group-id="0"]').length == 0) {
                                item_select.find('option:first-child').after(_option);
                            } else {
                                item_select.find('[data-group-id="0"]').after(_option);
                            }
                        } else {
                            group.prepend('<option data-subtext="' + response.item.long_description + '" value="' + response.item.itemid + '">(' + accounting.formatNumber(response.item.rate) + ') ' + response.item.description + '</option>');
                        }
                    }
                    if (!item_select.hasClass('ajax-search')) {
                        item_select.selectpicker('refresh');
                    } else {

                        item_select.contents().filter(function () {
                            return !$(this).is('.newitem') && !$(this).is('.newitem-divider');
                        }).remove();

                        var clonedItemsAjaxSearchSelect = item_select.clone();
                        item_select.selectpicker('destroy').remove();
                        $("body").find('.items-select-wrapper').append(clonedItemsAjaxSearchSelect);
                        init_ajax_search('items', '#item_select.ajax-search', undefined, admin_url + 'items/search');
                    }

                    add_item_to_preview(response.item.itemid);
                } else {
                    // Is general items view
                    $('.table-invoice-items').DataTable().ajax.reload(null, false);
                }
                alert_float('success', response.message);
            }
            $('#sales_item_modal').modal('hide');
        }).fail(function (data) {
            alert_float('danger', data.responseText);
        });
        return false;
    }
    function init_item_js() {
        // Add item to preview from the dropdown for invoices estimates
        $("body").on('change', 'select[name="item_select"]', function () {
            var itemid = $(this).selectpicker('val');
            if (itemid != '') {
                // add_item_to_preview(itemid);
                console.log('anything')
                add_item_to_preview2(itemid);
            }
        });

        // Items modal show action
        $("body").on('show.bs.modal', '#sales_item_modal', function (event) {

            $('.affect-warning').addClass('hide');

            var $itemModal = $('#sales_item_modal');
            $('input[name="itemid"]').val('');
            $itemModal.find('input').not('input[type="hidden"]').val('');
            $itemModal.find('textarea').val('');
            $itemModal.find('select').selectpicker('val', '').selectpicker('refresh');
            $('select[name="tax2"]').selectpicker('val', '').change();
            $('select[name="tax"]').selectpicker('val', '').change();
            $itemModal.find('.add-title').removeClass('hide');
            $itemModal.find('.edit-title').addClass('hide');

            var id = $(event.relatedTarget).data('id');
            // If id found get the text from the datatable
            if (typeof (id) !== 'undefined') {

                $('.affect-warning').removeClass('hide');
                $('input[name="itemid"]').val(id);

                requestGetJSON('invoice_items/get_item_by_id/' + id).done(function (response) {
                    $itemModal.find('input[name="description"]').val(response.description);
                    $itemModal.find('textarea[name="long_description"]').val(response.long_description.replace(/(<|<)br\s*\/*(>|>)/g, " "));
                    $itemModal.find('input[name="rate"]').val(response.rate);
                    $itemModal.find('input[name="unit"]').val(response.unit);
                    $('select[name="tax"]').selectpicker('val', response.taxid).change();
                    $('select[name="tax2"]').selectpicker('val', response.taxid_2).change();
                    $itemModal.find('#group_id').selectpicker('val', response.group_id);
                    $.each(response, function (column, value) {
                        if (column.indexOf('rate_currency_') > -1) {
                            $itemModal.find('input[name="' + column + '"]').val(value);
                        }
                    });

                    $('#custom_fields_items').html(response.custom_fields_html);

                    init_selectpicker();
                    init_color_pickers();
                    init_datepicker();

                    $itemModal.find('.add-title').addClass('hide');
                    $itemModal.find('.edit-title').removeClass('hide');
                    validate_item_form();
                });

            }
        });

        $("body").on("hidden.bs.modal", '#sales_item_modal', function (event) {
            $('#item_select').selectpicker('val', '');
        });

        validate_item_form();
    }
    function validate_item_form(){
        // Set validation for invoice item form
        appValidateForm($('#invoice_item_form'), {
            description: 'required',
            rate: {
                required: true,
            }
        }, manage_invoice_items);
    }


    // Add item to preview
    function add_item_to_preview2(id) {
        requestGetJSON('stock_lists/get_item_by_id/' + id).done(function(response) {

            clear_item_preview_values();

            $('.main input[name="product_name"]').val(response.product_name);
            $('.main input[name="product_code"]').val(response.product_code);
            $('.main input[name="product_id"]').val(response.id);

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
    function add_item_to_table2(data, itemid, merge_invoice, bill_expense) {


        // If not custom data passed get from the preview
        data = typeof(data) == 'undefined' || data == 'undefined' ? get_item_preview_values2() : data;
        if (data.item_id === "" && data.product_name === "") { return; }
        console.log(data);

        var table_row = '';
        var item_key = $("body").find('tbody .item').length + 1;

        table_row += '<tr class="sortable item" data-merge-invoice="' + merge_invoice + '" data-bill-expense="' + bill_expense + '">';

        table_row += '<td class="dragger">';

        // Check if quantity is number
        if (isNaN(data.quantity)) {
            data.quantity = 1;
        }

        // Check if received_qty is number
        if (data.received_qty === '' || isNaN(data.received_qty)) {
            data.received_qty = 0;
        }

        var amount = data.received_qty * data.quantity;
        console.log(amount);

        // var tax_name = 'newitems[' + item_key + '][taxname][]';
        $("body").append('<div class="dt-loader"></div>');
        var regex = /<br[^>]*>/gi;
        // get_taxes_dropdown_template(tax_name, data.taxname).done(function(tax_dropdown) {

        //     // order input
        table_row += '<input type="hidden" class="order" name="newitems[' + item_key + '][order]">';

        table_row += '</td>';

        table_row += '<input type="hidden" name="newitems[' + item_key + '][item_id]" value = "' + data.item_id + '"><td class="bold description"><textarea name="newitems[' + item_key + '][product_name]" class="form-control" rows="5">' + data.product_name + '</textarea></td>';

        table_row += '<td><textarea name="newitems[' + item_key + '][product_code]" class="form-control item_long_description" rows="5">' + data.product_code + '</textarea></td>';

        //     var custom_fields = $('tr.main td.custom_field');
        //     var cf_has_required = false;

        //     if (custom_fields.length > 0) {

        //         $.each(custom_fields, function() {

        //             var cf = $(this).clone();
        //             var cf_html = '';
        //             var cf_field = $(this).find('[data-fieldid]');
        //             var cf_name = 'newitems[' + item_key + '][custom_fields][items][' + cf_field.attr('data-fieldid') + ']';

        //             if (cf_field.is(':checkbox')) {

        //                 var checked = $(this).find('input[type="checkbox"]:checked');
        //                 var checkboxes = cf.find('input[type="checkbox"]');

        //                 $.each(checkboxes, function(i, e) {
        //                     var random_key = Math.random().toString(20).slice(2);
        //                     $(this).attr('id', random_key)
        //                         .attr('name', cf_name)
        //                         .next('label').attr('for', random_key);
        //                     if ($(this).attr('data-custom-field-required') == '1') {
        //                         cf_has_required = true;
        //                     }
        //                 });

        //                 $.each(checked, function(i, e) {
        //                     cf.find('input[value="' + $(e).val() + '"]')
        //                         .attr('checked', true);
        //                 });

        //                 cf_html = cf.html();

        //             } else if (cf_field.is('input') || cf_field.is('textarea')) {
        //                 if (cf_field.is('input')) {
        //                     cf.find('[data-fieldid]').attr('value', cf_field.val());
        //                 } else {
        //                     cf.find('[data-fieldid]').html(cf_field.val());
        //                 }
        //                 cf.find('[data-fieldid]').attr('name', cf_name);
        //                 if (cf.find('[data-fieldid]').attr('data-custom-field-required') == '1') {
        //                     cf_has_required = true;
        //                 }
        //                 cf_html = cf.html();
        //             } else if (cf_field.is('select')) {

        //                 if ($(this).attr('data-custom-field-required') == '1') {
        //                     cf_has_required = true;
        //                 }

        //                 var selected = $(this).find('select[data-fieldid]').selectpicker('val');
        //                 selected = typeof(selected != 'array') ? new Array(selected) : selected;

        //                 // Check if is multidimensional by multi-select customfield
        //                 selected = selected[0].constructor === Array ? selected[0] : selected;

        //                 var selectNow = cf.find('select');
        //                 var $wrapper = $('<div/>');
        //                 selectNow.attr('name', cf_name);

        //                 var $select = selectNow.clone();
        //                 $wrapper.append($select);
        //                 $.each(selected, function(i, e) {
        //                     $wrapper.find('select option[value="' + e + '"]').attr('selected', true);
        //                 });

        //                 cf_html = $wrapper.html();
        //             }
        //             table_row += '<td class="custom_field">' + cf_html + '</td>';
        //         });
        //     }



        if (!data.unit || typeof(data.unit) == 'undefined') {
            data.unit = '';
        }
        var checks = $('input[name="default_pack"]');
        if(checks.prop("checked") == true) {

            table_row += '<td><input type="checkbox" checked  name="newitems[' + item_key + '][default_pack]"  value="1" ><label for="default_pack">Default pack </label><input type="hidden" name="newitems[' + item_key + '][product_id]" class="form-control" value="' + data.product_id + '"></td>';
        }
        else if(checks.prop("checked") == false) {

            table_row += '<td><input type="checkbox"  name="newitems[' + item_key + '][default_pack]"  value="0" ><label for="default_pack">Default pack </label><input type="hidden" name="newitems[' + item_key + '][product_id]" class="form-control" value="' + data.product_id + '"></td>';
        }
        //
        // table_row += '<td><input type="number" name="newitems[' + item_key + '][ordered_qty]" class="form-control" value="' + data.ordered_qty + '"></td>';
        //
        // table_row += '<td><input type="number" name="newitems[' + item_key + '][received_qty]" class="form-control" value="' + data.received_qty + '"></td>';
        // table_row += '<td><input type="number" name="newitems[' + item_key + '][price]" class="form-control" value="' + data.price + '"></td>';
        // table_row += '<td><input type="number" name="newitems[' + item_key + '][volume]" class="form-control" value="' + data.volume + '"></td>';

        //     table_row += '<td class="rate"><input type="number" data-toggle="tooltip" title="' + app.lang.item_field_not_formatted + '" onblur="calculate_total();" onchange="calculate_total();" name="newitems[' + item_key + '][rate]" value="' + data.rate + '" class="form-control"></td>';

        //     table_row += '<td class="taxrate">' + tax_dropdown + '</td>';



        table_row += '<td><a href="#" class="btn btn-danger pull-left" onclick="delete_item(this,' + itemid + '); return false;"><i class="fa fa-trash"></i></a></td>';

        table_row += '</tr>';

        $('table.items tbody').append(table_row);

            // var checks = $('input[name="default_pack"]');
            // if(checks.prop("checked") == true){
            //     console.log("Checkbox is checked.");
            // }
            // else if(checks.prop("checked") == false){
            //     console.log("Checkbox is unchecked.");
            // }

     console.log('ok');
        $(document).trigger({
            type: "item-added-to-table",
            data: data,
            row: table_row
        });

        //     setTimeout(function() {
        //         calculate_total();
        //     }, 15);

        //     var billed_task = $('input[name="task_id"]').val();
        //     var billed_expense = $('input[name="expense_id"]').val();

        //     if (billed_task !== '' && typeof(billed_task) != 'undefined') {
        //         billed_tasks = billed_task.split(',');
        //         $.each(billed_tasks, function(i, obj) {
        //             $('#billed-tasks').append(hidden_input('billed_tasks[' + item_key + '][]', obj));
        //         });
        //     }

        //     if (billed_expense !== '' && typeof(billed_expense) != 'undefined') {
        //         billed_expenses = billed_expense.split(',');
        //         $.each(billed_expenses, function(i, obj) {
        //             $('#billed-expenses').append(hidden_input('billed_expenses[' + item_key + '][]', obj));
        //         });
        //     }

        if ($('#item_select').hasClass('ajax-search') && $('#item_select').selectpicker('val') !== '') {
            $('#item_select').prepend('<option></option>');
        }

        init_selectpicker();
        init_datepicker();
        init_color_pickers();
        clear_item_preview_values2();
        reorder_items();

        $('body').find('#items-warning').remove();
        $("body").find('.dt-loader').remove();
        $('#item_select').selectpicker('val', '');

        //     if (cf_has_required && $('.invoice-form').length) {
        //         validate_invoice_form();
        //     } else if (cf_has_required && $('.estimate-form').length) {
        //         validate_estimate_form();
        //     } else if (cf_has_required && $('.proposal-form').length) {
        //         validate_proposal_form();
        //     } else if (cf_has_required && $('.credit-note-form').length) {
        //         validate_credit_note_form();
        //     }

        return true;

        // });

        return false;
    }

    // Get the preview main values
    function get_item_preview_values2() {
        var response = {};

        response.item_id = $('.main input[name="item_id"]').val();
        response.product_name = $('.main textarea[name="product_name"]').val();
        response.product_code = $('.main textarea[name="product_code"]').val();

        // response.long_description = $('.main textarea[name="long_description"]').val();

        // response.taxname = $('.main select.tax').selectpicker('val');

        response.product_id = $('.main input[name="product_id"]').val();
        response.default_pack = $('.main input[name="default_pack"]').val();

        return response;
    }

    // Clear the items added to preview
    function clear_item_preview_values2(default_taxes) {

        // Get the last taxes applied to be available for the next item
        // var last_taxes_applied = $('table.items tbody').find('tr:last-child').find('select').selectpicker('val');
        var previewArea = $('.main');

        previewArea.find('textarea[name="product_name"]').val('');
        previewArea.find('textarea[name="product_code"]').val('');
        // previewArea.find('textarea').val(''); // includes cf
        // previewArea.find('td.custom_field input[type="checkbox"]').prop('checked', false); // cf
        // previewArea.find('td.custom_field input:not(:checkbox):not(:hidden)').val(''); // cf // not hidden for chkbox hidden helpers
        // previewArea.find('td.custom_field select').selectpicker('val', ''); // cf

        previewArea.find('input[name="product_id"]').val('');
        previewArea.find('input[name="product_id"]').val('');
        previewArea.find('input[name="default_pack"]').val('');

        // previewArea.find('select.tax').selectpicker('val', last_taxes_applied);


        // $('input[name="task_id"]').val('');
        // $('input[name="expense_id"]').val('');
    }

    // Calculate invoice total - NOT RECOMENDING EDIT THIS FUNCTION BECUASE IS VERY SENSITIVE
    function calculate_total() {

        if ($('body').hasClass('no-calculate-total')) {
            return false;
        }

        var calculated_tax,
            taxrate,
            item_taxes,
            row,
            _amount,
            _tax_name,
            taxes = {},
            taxes_rows = [],
            subtotal = 0,
            total = 0,
            quantity = 1,
            total_discount_calculated = 0,
            rows = $('.table.has-calculations tbody tr.item'),
            // discount_area = $('#discount_area'),

            discount_percent = $('input[name="discount_percent"]').val(),
            discount_fixed = $('input[name="discount_total"]').val(),
            discount_total_type = $('.discount-total-type.selected');
        // discount_type = $('select[name="discount_type"]').val();

        $('.tax-area').remove();

        $.each(rows, function() {

            quantity = $(this).find('[data-quantity]').val();
            if (quantity === '') {
                quantity = 1;
                $(this).find('[data-quantity]').val(1);
            }

            _amount = accounting.toFixed($(this).find('td.rate input').val() * quantity, app.options.decimal_places);
            _amount = parseFloat(_amount);

            $(this).find('td.amount').html(format_money(_amount, true));
            subtotal += _amount;
            row = $(this);
            item_taxes = $(this).find('select.tax').selectpicker('val');

            if (item_taxes) {
                $.each(item_taxes, function(i, taxname) {
                    taxrate = row.find('select.tax [value="' + taxname + '"]').data('taxrate');
                    calculated_tax = (_amount / 100 * taxrate);
                    if (!taxes.hasOwnProperty(taxname)) {
                        if (taxrate != 0) {
                            _tax_name = taxname.split('|');
                            tax_row = '<tr class="tax-area"><td>' + _tax_name[0] + '(' + taxrate + '%)</td><td id="tax_id_' + slugify(taxname) + '"></td></tr>';
                            $(discount_area).after(tax_row);
                            taxes[taxname] = calculated_tax;
                        }
                    } else {
                        // Increment total from this tax
                        taxes[taxname] = taxes[taxname] += calculated_tax;
                    }
                });
            }
        });

        // Discount by percent
        if ((discount_percent !== '' && discount_percent != 0) && discount_type == 'before_tax' && discount_total_type.hasClass('discount-type-percent')) {
            total_discount_calculated = (subtotal * discount_percent) / 100;
        } else if ((discount_fixed !== '' && discount_fixed != 0) && discount_type == 'before_tax' && discount_total_type.hasClass('discount-type-fixed')) {
            total_discount_calculated = discount_fixed;
        }

        $.each(taxes, function(taxname, total_tax) {
            if ((discount_percent !== '' && discount_percent != 0) && discount_type == 'before_tax' && discount_total_type.hasClass('discount-type-percent')) {
                total_tax_calculated = (total_tax * discount_percent) / 100;
                total_tax = (total_tax - total_tax_calculated);
            } else if ((discount_fixed !== '' && discount_fixed != 0) && discount_type == 'before_tax' && discount_total_type.hasClass('discount-type-fixed')) {
                var t = (discount_fixed / subtotal) * 100;
                total_tax = (total_tax - (total_tax * t) / 100);
            }

            total += total_tax;
            total_tax = format_money(total_tax);
            $('#tax_id_' + slugify(taxname)).html(total_tax);
        });

        total = (total + subtotal);

        // Discount by percent
        if ((discount_percent !== '' && discount_percent != 0) && discount_type == 'after_tax' && discount_total_type.hasClass('discount-type-percent')) {
            total_discount_calculated = (total * discount_percent) / 100;
        } else if ((discount_fixed !== '' && discount_fixed != 0) && discount_type == 'after_tax' && discount_total_type.hasClass('discount-type-fixed')) {
            total_discount_calculated = discount_fixed;
        }

        total = total - total_discount_calculated;




        var discount_html = '-' + format_money(total_discount_calculated);
        $('input[name="discount_total"]').val(accounting.toFixed(total_discount_calculated, app.options.decimal_places));

        // Append, format to html and display
        $('.discount-total').html(discount_html);

        $('.subtotal').html(format_money(subtotal) + hidden_input('subtotal', accounting.toFixed(subtotal, app.options.decimal_places)));
        $('.total').html(format_money(total) + hidden_input('total', accounting.toFixed(total, app.options.decimal_places)));

        $(document).trigger('sales-total-calculated');






    }

    // Deletes package items
    function delete_package_item(row, itemid) {
        $(row).parents('tr').addClass('animated fadeOut', function() {
            setTimeout(function() {
                $(row).parents('tr').remove();
                calculate_total();
            }, 50);
        });
        // If is edit we need to add to input removed_items to track activity
        if ($('input[name="packId"]').length > 0) {
            $('#removed-items').append(hidden_input('removed_items[]', itemid));
        }
    }

</script>
