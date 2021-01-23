<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<a href="<?php echo admin_url('warehouses/packing_list_manage'); ?>" class="btn btn-info pull-left display-block"><?php echo _l('new_packing_list'); ?></a>
						</div>
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('packing_type'),
							// _l('pack_capacity'),
							_l('box_quality'),
							_l('box_type'),
							_l('l_size'),
							_l('w_size'),
							_l('h_size'),
							_l('volume_m3'),
							_l('pack_price'),
							_l('price_per_item'),
							_l('stock_quantity'),
						),'packing_list'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		initDataTable('.table-packing_list', window.location.href);
	});
</script>