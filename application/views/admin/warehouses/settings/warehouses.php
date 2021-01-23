<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#warehouse_modal"><?php echo _l('new_warehouse'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('order_no'),
							_l('name'),
							_l('options'),
						),'warehouses'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="warehouse_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_warehouse'); ?></span>
					<span class="add-title"><?php echo _l('add_new_warehouse'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/warehouses/warehouse_manage',array('id'=>'warehouse_form')); ?>
			<?php echo form_hidden('warehouseid'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
<!--						<div class="alert alert-warning">--><?php ////echo _l('currency_valid_code_help'); ?><!--</div>-->
						<?php echo render_input('order_no',_l('order_no'),'','number'); ?>
						<?php echo render_input('warehouse_name',_l('warehouse_name'),'','text'); ?>
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

		initDataTable('.table-warehouses', window.location.href, [2], [2]);

		appValidateForm($('form'), {
			warehouse_name: 'required',
			order_no: 'required',
		}, manage_warehouses);

		$('#warehouse_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#warehouse_modal input[name="warehouse_name"]').val('');
			$('#warehouse_modal input[name="order_no"]').val('');
			$('#warehouse_modal input[name="warehouseid"]').val('');

			$('#warehouse_modal .add-title').removeClass('hide');
			$('#warehouse_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="warehouseid"]').val(id);
				var orderNo = $(button).parents('tr').find('td').eq(0).text();
				var warehouseName = $(button).parents('tr').find('td').eq(1).find('span.name').text();
				$('#warehouse_modal .add-title').addClass('hide');
				$('#warehouse_modal .edit-title').removeClass('hide');
				$('#warehouse_modal input[name="warehouse_name"]').val(warehouseName);
				$('#warehouse_modal input[name="order_no"]').val(orderNo);

			}
		});
	});
	/* CURRENCY MANAGE FUNCTIONS */
	function manage_warehouses(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-warehouses').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#warehouse_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
