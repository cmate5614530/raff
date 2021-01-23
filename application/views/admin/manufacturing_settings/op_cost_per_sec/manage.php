<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('op_cost_per_sec'),
							_l('options'),
						),'operator-cost'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="opc_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_op_cost_per_sec'); ?></span>
					<span class="add-title"><?php echo _l('add_op_cost_per_sec'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/manufacturing_settings/manage_op_cost_per_sec',array('id'=>'op_cost_per_sec_form')); ?>
			<?php echo form_hidden('opcid'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">

						<?php echo render_input('op_cost_per_sec',_l('op_cost_per_sec'),'','number',array('placeholder'=>_l('op_cost_per_sec'))); ?>

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

		initDataTable('.table-operator-cost', window.location.href, [1], [1]);

		appValidateForm($('form'), {
			op_cost_per_sec: 'required',
		}, manage_operator_cost);

		$('#opc_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#opc_modal input[name="op_cost_per_sec"]').val('');
			$('#opc_modal input[name="opcid"]').val('');

			$('#opc_modal .add-title').removeClass('hide');
			$('#opc_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="opcid"]').val(id);
				var op_cost_per_sec = $(button).parents('tr').find('td').eq(0).find('span.name').text();
				$('#opc_modal .add-title').addClass('hide');
				$('#opc_modal .edit-title').removeClass('hide');
				$('#opc_modal input[name="op_cost_per_sec"]').val(op_cost_per_sec);

			}
		});
	});
	/* manage_capacity_hour phase MANAGE FUNCTIONS */
	function manage_operator_cost(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-operator-cost').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#opc_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
