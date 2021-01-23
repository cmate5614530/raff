<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<!-- <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#work_hours_modal"><?php echo _l('new_work_hours'); ?></a> -->
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('work_hour'),
							_l('options'),
						),'work-hours'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="work_hours_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_work_hour_capacity'); ?></span>
					<span class="add-title"><?php echo _l('add_work_hour_capacity'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/manufacturing_settings/manage_work_hours_capacity',array('id'=>'work_hours_form')); ?>
			<?php echo form_hidden('workhoursid'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">

						<?php echo render_input('capacity_hours',_l('capacity_hours'),'','number',array('placeholder'=>_l('capacity_hours'))); ?>

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

		initDataTable('.table-work-hours', window.location.href, [1], [1]);

		appValidateForm($('form'), {
			capacity_hours: 'required',
		}, manage_capacity_hour);

		$('#work_hours_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#work_hours_modal input[name="capacity_hours"]').val('');
			$('#work_hours_modal input[name="workhoursid"]').val('');

			$('#work_hours_modal .add-title').removeClass('hide');
			$('#work_hours_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="workhoursid"]').val(id);
				var capacity_hours = $(button).parents('tr').find('td').eq(0).find('span.name').text();
				$('#work_hours_modal .add-title').addClass('hide');
				$('#work_hours_modal .edit-title').removeClass('hide');
				$('#work_hours_modal input[name="capacity_hours"]').val(capacity_hours);

			}
		});
	});
	/* manage_capacity_hour phase MANAGE FUNCTIONS */
	function manage_capacity_hour(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-work-hours').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#work_hours_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
