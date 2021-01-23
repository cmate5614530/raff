<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content" style="padding-bottom: 0">
		<div class="row">
			<?php
			echo form_open($this->uri->uri_string(),array('id'=>'dispatch-form','class'=>'dispatch-form'));
			if(isset($invoice)){
                echo form_hidden('isedit');
				echo form_hidden('transfer_out');
			}
			?>
			<div class="col-md-12">
				<?php $this->load->view('admin/warehouses/dispatching_bay/invoice_template'); ?>
			</div>
			<?php echo form_close(); ?>
		</div>

	</div>
</div>

<div class="modal fade" id="transfer_out_confirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('transfer_out_confirm_title'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="edit-title"><?php echo _l('transfer_out_confirm_content'); ?></h4>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info" onclick="transfer_out_confirm()"><?php echo _l('yes'); ?></button>
                <button type="button" class="btn btn-default" onclick="transfer_out_ignore()"><?php echo _l('no'); ?></button>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		// validate_invoice_form();
	    // Init accountacy currency symbol
	    init_currency();
	    // Project ajax search
	    init_ajax_project_search_by_customer_id();
	    // Maybe items ajax search
	    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
	});

    // $('#invoice-form').submit(function(e){
    //     $('.pack_capacity').prop('disabled',false);
    //     if($('#wo_phase_id').val() == 5)
    //     {
    //         e.preventDefault();
    //         $('#transfer_out_confirm').modal('show');
    //     }
        
    // })

    function transfer_out_confirm()
    {
        $('input[name="transfer_out"]').val(1);
        $('#invoice-form')[0].submit();
    }

    function transfer_out_ignore()
    {
        $('input[name="transfer_out"]').val(0);
        $('#invoice-form')[0].submit();
    }

    $('#select_all').change(function(){
        var checkboxlist = $('.ui-sortable').find('[data-pre-check]');
        if($(this).prop('checked') == true){
            for(let i = 0; i < checkboxlist.length; i++){
                checkboxlist[i].checked = true;
            }
        } else {
            for(let i = 0; i < checkboxlist.length; i++){
                checkboxlist[i].checked = false;
            }
        }
    });

    $('#dispatch_submit').click(function(){
        $('.pack_capacity').prop('disabled',false);
        if($('#wo_phase_id').val() == 5)
        {
            $('#transfer_out_confirm').modal('show');
        }
        var checked_wo_items = $('.ui-sortable').find('[data-pre-check]').parents().find('.sortable.item');
        for(let i = 0; i < checked_wo_items.length; i++){
            var dispatch = checked_wo_items[i].children[1].getElementsByTagName("input")[0].checked;
            var rel_product_name = checked_wo_items[i].children[2].children[0].value;
            var rel_product_id = checked_wo_items[i].children[2].children[1].value;
            var sending_qty = checked_wo_items[i].children[6].children[0].value;
            var selected_warehouse = checked_wo_items[i].children[7].getElementsByClassName('selectpicker')[0].value;
            if(dispatch == true && selected_warehouse == ''){
                alert('Please Select Warehouse');
            } else if(dispatch == true && sending_qty == ''){
                alert('PLease fill Sending Qty');
            }
            else
            {
                requestGetJSON(admin_url +'warehouses/get_transfers_by_product_code/' + rel_product_id).done(function (results) {
                    warehouse = results.filter(e => {
                         return e.warehouse_id == selected_warehouse;
                    })
                    warehouse_qty = warehouse[0].qty;
                    if(warehouse_qty < sending_qty){
                        alert('You can not send from this warehouse in "' + rel_product_name + '" product');
                    } else {
                        $('#dispatch-form').submit();
                    }
                })
            } 
            
        }
        
    })




</script>
</body>
</html>
