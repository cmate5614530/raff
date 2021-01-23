<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<!-- <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#energy_price_modal"><?php echo _l('new_enery_price'); ?></a> -->
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('energy_price'),
							_l('options'),
						),'energy-prices'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="energy_price_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_enery_price'); ?></span>
					<span class="add-title"><?php echo _l('add_enery_price'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/manufacturing_settings/manage_energy_prices',array('id'=>'energy_prices_form')); ?>
			<?php echo form_hidden('enerypriceid'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">

						<?php echo render_input('energy_price',_l('energy_price'),'','number',array('placeholder'=>_l('energy_price'))); ?>

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

		initDataTable('.table-energy-prices', window.location.href, [1], [1]);

		appValidateForm($('form'), {
            energy_price: 'required',
		}, manage_energy_price);

		$('#energy_price_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#energy_price_modal input[name="energy_price"]').val('');
			$('#energy_price_modal input[name="enerypriceid"]').val('');

			$('#energy_price_modal .add-title').removeClass('hide');
			$('#energy_price_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="enerypriceid"]').val(id);
				var energy_price = $(button).parents('tr').find('td').eq(0).find('span.name').text();
				$('#energy_price_modal .add-title').addClass('hide');
				$('#energy_price_modal .edit-title').removeClass('hide');
				$('#energy_price_modal input[name="energy_price"]').val(energy_price);

			}
		});
	});
	/* manage_energy_price  MANAGE FUNCTIONS */
	function manage_energy_price(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-energy-prices').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#energy_price_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
