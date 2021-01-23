<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#currency_exchange_modal"><?php echo _l('new_currency'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('currency_list_name'),
							_l('currency_list_symbol'),
							_l('rate'),
							_l('options'),
						),'currencies-exchange'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="currency_exchange_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('currency_edit_heading'); ?></span>
					<span class="add-title"><?php echo _l('currency_add_heading'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/finances/currency_exchane_rate_manage',array('id'=>'currency_form')); ?>
			<?php echo form_hidden('currencyid'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<div class="alert alert-warning"><?php echo _l('currency_valid_code_help'); ?></div>
						<?php echo render_input('name',_l('currency_name'),'','text',array('placeholder'=>_l('currency_name'))); ?>
						<?php echo render_input('symbol',_l('symbol')); ?>

						<?php echo render_input('rate',_l('currency_rate'),'','number',array('placeholder'=>_l('currency_rate'))); ?>
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

		initDataTable('.table-currencies-exchange', window.location.href, [3], [3]);

		appValidateForm($('form'), {
			name:{
				required:true,
				maxlength:5
			},
			symbol: 'required',
			rate: 'required',
		}, manage_currencies);

		$('#currency_exchange_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#currency_exchange_modal input[name="name"]').val('');
			$('#currency_exchange_modal input[name="symbol"]').val('');
			$('#currency_exchange_modal input[name="rate"]').val('');
			$('#currency_exchange_modal input[name="currencyid"]').val('');

			$('#currency_exchange_modal .add-title').removeClass('hide');
			$('#currency_exchange_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="currencyid"]').val(id);
				var name = $(button).parents('tr').find('td').eq(0).find('span.name').text();
				var symbol = $(button).parents('tr').find('td').eq(1).text();
				var xrate = $(button).parents('tr').find('td').eq(2).text();
				$('#currency_exchange_modal .add-title').addClass('hide');
				$('#currency_exchange_modal .edit-title').removeClass('hide');
				$('#currency_exchange_modal input[name="name"]').val(name);
				$('#currency_exchange_modal input[name="symbol"]').val(symbol);
				$('#currency_exchange_modal input[name="rate"]').val(xrate);

			}
		});
	});
	/* CURRENCY MANAGE FUNCTIONS */
	function manage_currencies(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			if (response.success == true) {
				$('.table-currencies-exchange').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#currency_exchange_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
