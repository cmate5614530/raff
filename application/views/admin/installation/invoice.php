<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content" style="padding-bottom: 0">
		<div class="row">
			<?php
			echo form_open($this->uri->uri_string(),array('id'=>'invoice-form','class'=>'_transaction_form invoice-form'));
			if(isset($invoice)){
                echo form_hidden('isedit');
				echo form_hidden('transfer_out');
			}
			?>
			<div class="col-md-12">
				<?php $this->load->view('admin/installation/invoice_template'); ?>
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

	

    $('#invoice-form').submit(function(e){
        $('.pack_capacity').prop('disabled',false);
        if($('#wo_phase_id').val() == 5)
        {
            e.preventDefault();
            $('#transfer_out_confirm').modal('show');
        }
        
    })

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

</script>
</body>
</html>
