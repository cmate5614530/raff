<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <?php echo form_open($this->uri->uri_string(),array('id'=>'transfer')); ?>
            <div class="col-md-12 transfers">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <?php 
                                    $selected = (isset($transfer) ? $transfer->stock_product_code : '');
                                    echo render_select('stock_product_code',$product_code,array('id','0'),_l('product_code'),$selected); 
                                ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group" id="transaction_from_stock">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $selected = (isset($transfer) ? $transfer->transaction_to : '');
                                    echo render_select('transaction_to',$warehouse_list,array('id','warehouse_name'),_l('transaction_to'),$selected); 
                                    ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($transfer) ? $transfer->transaction_notes : '');
                                    echo render_input('transaction_notes',_l('transaction_notes'),$value,'text',array('placeholder'=>_l('transaction_notes'))); ?>
                            </div>
                            <div class="col-md-6">
                                <?php
                                    $value = (isset($transfer) ? $transfer->transaction_qty : ''); 
                                    echo render_input('transaction_qty',_l('transaction_qty'),$value,'number',array('placeholder'=>_l('transaction_qty'))); ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="checkbox checkbox-primary" style="margin-top: 25px">
                                    <input type="checkbox" id="allocation" name="allocation" <?php if(isset($transfer)){if($transfer->allocation == 1){echo ' checked';}}; ?>>
                                   <label for="allocation"><?php echo _l('allocation_enable'); ?></label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($transfer) ? $transfer->allocation_reason : '');
                                    echo render_input('allocation_reason',_l('allocation_reason'),$value,'text',array('placeholder'=>_l('allocation_reason'))); ?>
                            </div>
                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($transfer) ? $transfer->wo_no : '');
                                    echo render_input('wo_no',_l('wo_no'),$value,'number',array('placeholder'=>_l('wo_no'))); ?>
                            </div>

                            <div class="col-md-6">
                                <?php 
                                    $value = (isset($transfer) ? $transfer->purchase_id : '');
                                    echo render_input('purchase_id',_l('purchase_id'),$value,'number',array('placeholder'=>_l('purchase_id'))); ?>
                            </div>
                            <div class="col-md-6">
                                <?php $createdUserNameValue = (isset($created_user_name) ? $created_user_name : "");?>
                                <?php echo render_input('created_user',_l('created_user'),$createdUserNameValue,'text',array('placeholder'=>_l('created_user'),'readonly'    => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php $updatedUserNameValue = (isset($updated_user_name) ? $updated_user_name : "");?>
                                <?php echo render_input('updated_user',_l('updated_user'),$updatedUserNameValue,'text',array('placeholder'=>_l('updated_user'),'readonly'    => 'readonly')); ?>
                            </div>
                            <div class="col-md-6">
                                <?php
                                    $value = (isset($transfer) ? $transfer->description : ''); 
                                    echo render_textarea('description',_l('description'),$value); ?>
                            </div>
                        </div>
                        <button id="transfer_submit_btn" type="submit" class="btn btn-info pull-right"><?php echo _l('submit'); ?></button>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>

    </div>
    <?php init_tail(); ?>


    <script>
        $(function(){
            appValidateForm($('form'), {
                stock_product_code: 'required',
                transaction_from: 'required',
                transaction_to:'required',
                transaction_qty:'required',
            });
        });

        var transfer_id = '<?php if(isset($transfer)) echo $transfer->id; else echo '';?>';
        var warehouses = [];
        var selectedTransaction = '<?php if(isset($transfer)) echo $transfer->transaction_from?>';
        var option = '<option></option>';
        $('#stock_product_code').change(function(){
            id = $(this).val()
            var transactionFrom = admin_url +'warehouses/get_transfers_by_product_code/' + id ;
            requestGetJSON(transactionFrom).done(function (results) {
                if(results){
                    warehouses = results;
                    option = '<option></option>';
                    results.forEach(e => {
                        if(e.warehouse_id == selectedTransaction)
                            option += '<option value="'+e.warehouse_id+'" selected>'+e.warehouse+' : '+ e.qty +'</option>';
                        else
                            option += '<option value="'+e.warehouse_id+'">'+e.warehouse+' : '+ e.qty +'</option>';
                    })
                    $('#transaction_from_stock').empty();
                    $('#transaction_from_stock').append('<label for="transaction_from" class="control-label"><?php echo _l('transaction_from')?></label><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="transaction_from" data-fieldid="transaction_from" name="transaction_from" id="transaction_from" class="selectpicker form-control transaction_from" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+option+'</select>')
                    init_selectpicker();
                }
            })
        })
        if(transfer_id){
            id = $('#stock_product_code').val()
            var transactionFrom = admin_url +'warehouses/get_transfers_by_product_code/' + id ;
            requestGetJSON(transactionFrom).done(function (results) {
                if(results){
                    warehouses = results;
                    option = '<option></option>';
                    results.forEach(e => {
                        if(e.warehouse_id == selectedTransaction)
                            option += '<option value="'+e.warehouse_id+'" selected>'+e.warehouse+' : '+ e.qty +'</option>';
                        else
                            option += '<option value="'+e.warehouse_id+'">'+e.warehouse+' : '+ e.qty +'</option>';
                    })
                    $('#transaction_from_stock').empty();
                    $('#transaction_from_stock').append('<label for="transaction_from" class="control-label"><?php echo _l('transaction_from')?></label><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="transaction_from" data-fieldid="transaction_from" name="transaction_from" id="transaction_from" class="selectpicker form-control transaction_from" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+option+'</select>')
                    init_selectpicker();
                }
            })
        } else {
            option = '<option></option>';
            $('#transaction_from_stock').empty();
            $('#transaction_from_stock').append('<label for="transaction_from" class="control-label"><?php echo _l('transaction_from')?></label><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="transaction_from" data-fieldid="transaction_from" name="transaction_from" id="transaction_from" class="selectpicker form-control transaction_from" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+option+'</select>')
            init_selectpicker();
        }
        

        $('#allocation').change(function(){
            if($(this).prop('checked') == true)
            {
                $('#transaction_to').selectpicker('val', '');
                $('#transaction_to').prop('disabled', true);
            }
            else
                $('#transaction_to').prop('disabled', false);
        })

        if($('#allocation').prop('checked') == true)
        {
            $('#transaction_to').selectpicker('val', '');
            $('#transaction_to').prop('disabled', true);
        }

        $('#transfer').submit(function(e){
            e.preventDefault();
            $('#transfer_submit_btn').prop('disabled', true);
            var wId = $('#transaction_from').val();
            var currentWarehouse = warehouses.filter(e => {
                return e.warehouse_id == wId;
            })
            if(currentWarehouse[0]){
                if($('#transaction_qty').val() > currentWarehouse[0].qty && currentWarehouse[0].order_no != 1)
                {
                    alert('Overflowed Quantity from this Warehouse');
                    $('#transfer_submit_btn').prop('disabled', false);
                } else {
                    $(this)[0].submit();
                }
            }

        })
        
    </script>

    </body>
    </html>
