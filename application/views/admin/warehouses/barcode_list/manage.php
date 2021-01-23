<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#barocde_modal"><?php echo _l('new_barcode'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('barcode_id'),
                            _l('products_code'),
                            _l('product_name'),
                            _l('barcode_price'),
							_l('options'),
						),'barcode-list'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="barocde_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_barcode'); ?></span>
					<span class="add-title"><?php echo _l('add_barcode'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/warehouses/barcode_list_manage',array('id'=>'barcode_list_form')); ?>
			<?php echo form_hidden('barcodelistId'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">

						<?php echo render_input('barcode_id',_l('barcode_id'),'','number',array('placeholder'=>_l('barcode_id'))); ?>

						<?php echo render_select('products_code',$products,array('id','product_code'),_l('product_code')); ?>

                        <?php echo render_input('product_name',_l('product_name'),'','text',array('placeholder'=>_l('product_name'),'readonly' => true)); ?>

                        <?php echo render_input('barcode_price',_l('barcode_price'),'','number',array('placeholder'=>_l('barcode_price'))); ?>

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
<?php init_tail(); ?>
<script>
	$(function(){

		initDataTable('.table-barcode-list', window.location.href, [4], [4]);

		appValidateForm($('form'), {
            barcode_id: 'required',
            products_code: 'required',
            barcode_price: 'required',
		}, manage_barcode_list);

		$('#barocde_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#barocde_modal input[name="barcode_id"]').val('');
            $('#barocde_modal input[name="products_code"]').val('');
            $('#barocde_modal input[name="barcode_price"]').val('');
			$('#barocde_modal input[name="barcodelistId"]').val('');

			$('#barocde_modal .add-title').removeClass('hide');
			$('#barocde_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="barcodelistId"]').val(id);
				$('#barocde_modal .add-title').addClass('hide');
				$('#barocde_modal .edit-title').removeClass('hide');

                var barcodeModal = $('#barocde_modal');
                requestGetJSON('warehouses/get_barcode_list_by_id/' + id).done(function (response) {
                    barcodeModal.find('#barcode_id').val(response.barcode_id);
                    barcodeModal.find('#products_code').selectpicker('val', response.products_code);
                    barcodeModal.find('#product_name').val(response.product_name);
                    barcodeModal.find('#barcode_price').val(response.barcode_price);
                    // console.log(response);
                    init_selectpicker();
                });

			}
            if(typeof(id) == 'undefined'){
                $( "#barcode_id" ).blur(function() {
                    var barcode = $('#barocde_modal input[name="barcode_id"]').val();
                    // console.log(barcode);
                    requestGetJSON('warehouses/get_barcode/' + barcode).done(function (response) {

                        if(response.success == true){
                            $('#barocde_modal').find('#barcode_id').val('');
                            alert_float('success', response.message);
                        }
                        // console.log(response);
                    });
                });
            }

            $("select"). change(function(){
                var productId = $(this). children("option:selected"). val();
                requestGetJSON('warehouses/get_stock_list_by_id/' + productId).done(function (response) {
                    $('#barocde_modal').find('#product_name').val(response.product_name);
                    // console.log(response);
                });
            });

		});
	});
	/* manage_installation_process MANAGE FUNCTIONS */
	function manage_barcode_list(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			// console.log(response);
			if (response.success == true) {
				$('.table-barcode-list').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#barocde_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
