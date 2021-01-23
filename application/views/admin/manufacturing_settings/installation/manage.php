<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<!-- <div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#installation_process_modal"><?php echo _l('new_installation'); ?></a>
						</div> -->
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('installation_name'),
                            _l('take_from'),
                            _l('export_to'),
							_l('options'),
						),'installation-process'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="installation_process_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_installation'); ?></span>
					<span class="add-title"><?php echo _l('add_installation'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/manufacturing_settings/manage_installation_process',array('id'=>'installation_process_form')); ?>
			<?php echo form_hidden('installationId'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">

						<?php echo render_input('name',_l('installation_name'),'','text',array('placeholder'=>_l('installation_name'))); ?>

						<?php echo render_select('take_from',$warehouses,array('id','warehouse_name'),_l('take_from')); ?>

						<?php echo render_select('export_to',$warehouses,array('id','warehouse_name'),_l('export_to')); ?>

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

		initDataTable('.table-installation-process', window.location.href, [3], [3]);

		appValidateForm($('form'), {
			name: 'required',
            take_from: 'required',
            export_to: 'required',
		}, manage_installation_process);

		$('#installation_process_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#installation_process_modal input[name="name"]').val('');
			$('#installation_process_modal input[name="installationId"]').val('');

			$('#installation_process_modal .add-title').removeClass('hide');
			$('#installation_process_modal .edit-title').addClass('hide');

			$('#take_from').selectpicker('val', '');
			$('#export_to').selectpicker('val', '');

			if (typeof(id) !== 'undefined') {
				$('input[name="installationId"]').val(id);
				// var name = $(button).parents('tr').find('td').eq(0).find('span.name').text();
				$('#installation_process_modal .add-title').addClass('hide');
				$('#installation_process_modal .edit-title').removeClass('hide');
				// $('#installation_process_modal input[name="name"]').val(name);

                var installationModal = $('#installation_process_modal');
                requestGetJSON('manufacturing_settings/get_installation_by_id/' + id).done(function (response) {
                	console.log(response);
                	installationModal.find('#name').val(response.name);
                    installationModal.find('#take_from').selectpicker('val', response.take_from);
                    installationModal.find('#export_to').selectpicker('val', response.export_to);
                    init_selectpicker();
                });

			}
		});
	});
	/* manage_installation_process MANAGE FUNCTIONS */
	function manage_installation_process(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			// console.log(response);
			if (response.success == true) {
				$('.table-installation-process').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#installation_process_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
