<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#stock_unit_modal"><?php echo _l('new_stock_unit'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('name'),
							_l('options'),
							_l('unit_active'),
						),'stock_unit'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="stock_unit_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_stock_unit'); ?></span>
					<span class="add-title"><?php echo _l('add_new_stock_unit'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/warehouses/stock_unit_manage',array('id'=>'stock_unit_form')); ?>
			<?php echo form_hidden('stock_unit_id'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
<!--						<div class="alert alert-warning">--><?php ////echo _l('currency_valid_code_help'); ?><!--</div>-->
						<?php echo render_input('name',_l('stock_unit_name'),'','text'); ?>
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

		initDataTable('.table-stock_unit', window.location.href, [2], [2]);

		appValidateForm($('form'), {
			name: 'required',
		}, manage_stock_unit);

		$('#stock_unit_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#stock_unit_modal input[name="name"]').val('');
			$('#stock_unit_modal input[name="stock_unit_id"]').val('');

			$('#stock_unit_modal .add-title').removeClass('hide');
			$('#stock_unit_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="stock_unit_id"]').val(id);
				var name = $(button).parents('tr').find('td').eq(0).text();
				$('#stock_unit_modal .add-title').addClass('hide');
				$('#stock_unit_modal .edit-title').removeClass('hide');
				$('#stock_unit_modal input[name="name"]').val(name);

			}
		});
	});
	/* CURRENCY MANAGE FUNCTIONS */
	function manage_stock_unit(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-stock_unit').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#stock_unit_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
