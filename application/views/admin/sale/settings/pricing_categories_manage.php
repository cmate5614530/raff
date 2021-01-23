<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#pricing_category_modal"><?php echo _l('new_pricing_category'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('name'),
							_l('cal_value1'),
							_l('cal_value2'),
							_l('order_no'),
							_l('default_currency'),
							_l('options'),
						),'pricing-category'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="pricing_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('edit_pricing_category'); ?></span>
					<span class="add-title"><?php echo _l('add_pricing_category'); ?></span>
				</h4>
			</div>
			<?php echo form_open('admin/sale/manage_pricing_categories',array('id'=>'pricing_cattegory_form')); ?>
			<?php echo form_hidden('pricingCatId'); ?>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<div class="alert alert-warning"><?php echo _l('currency_valid_code_help'); ?></div>
						<?php echo render_input('name',_l('name'),'','text',array('placeholder'=>_l('name'))); ?>
						<?php echo render_select('default_currency',$currency,array('id','name'),_l('default_currency')); ?>

						<?php echo render_input('calc_value1',_l('cal_value1'),'','number',array('placeholder'=>_l('cal_value1'))); ?>

						<?php echo render_input('calc_value2',_l('cal_value2'),'','number',array('placeholder'=>_l('cal_value1'))); ?>
						<?php echo render_input('order_no',_l('order_no'),'','number'); ?>
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

		initDataTable('.table-pricing-category', window.location.href, [5], [5],'undefined',[3, 'asc']);

		appValidateForm($('form'), {
			name: 'required',
			default_currency: 'required',
			calc_value1: 'required',
			calc_value2: 'required',
			order_no: 'required',
		}, manage_currencies);

		$('#pricing_category_modal').on('show.bs.modal', function(event) {

			var button = $(event.relatedTarget)
			var id = button.data('id');

			$('#pricing_category_modal input[name="name"]').val('');
			$('#pricing_category_modal input[name="calc_value1"]').val('');
			$('#pricing_category_modal input[name="calc_value2"]').val('');
			$('#pricing_category_modal input[name="pricingCatId"]').val('');
			$('#pricing_category_modal input[name="order_no"]').val('');

			$('#pricing_category_modal .add-title').removeClass('hide');
			$('#pricing_category_modal .edit-title').addClass('hide');

			if (typeof(id) !== 'undefined') {
				$('input[name="pricingCatId"]').val(id);
				var name = $(button).parents('tr').find('td').eq(0).text();
				var calcValue1 = $(button).parents('tr').find('td').eq(1).text();
				var calcValue2 = $(button).parents('tr').find('td').eq(2).text();
				var order_no = $(button).parents('tr').find('td').eq(3).text();
				$('#pricing_category_modal .add-title').addClass('hide');
				$('#pricing_category_modal .edit-title').removeClass('hide');
				$('#pricing_category_modal input[name="name"]').val(name);
				$('#pricing_category_modal input[name="calc_value1"]').val(calcValue1);
				$('#pricing_category_modal input[name="calc_value2"]').val(calcValue2);
				$('#pricing_category_modal input[name="order_no"]').val(order_no);

                var $priceCatModal = $('#pricing_category_modal');
                requestGetJSON('sale/get_price_category_by_id/' + id).done(function (response) {
                    $priceCatModal.find('#default_currency').selectpicker('val', response.default_currency);
                    init_selectpicker();
                });

			}
		});
	});
	/* CURRENCY MANAGE FUNCTIONS */
	function manage_currencies(form) {
		var data = $(form).serialize();
		var url = form.action;
		$.post(url, data).done(function(response) {
			response = JSON.parse(response);
			// console.log(response);
			if (response.success == true) {
				$('.table-pricing-category').DataTable().ajax.reload();
				alert_float('success', response.message);
			}
			$('#pricing_category_modal').modal('hide');
		});
		return false;
	}

</script>
</body>
</html>
