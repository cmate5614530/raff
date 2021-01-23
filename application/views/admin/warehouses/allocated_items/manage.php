<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<!-- <div class="_buttons">
							<a href="<?php echo admin_url('warehouses/transfers_manage'); ?>" class="btn btn-info pull-left display-block"><?php echo _l('new_transfer'); ?></a>
						</div> -->
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('product_code'),
							_l('product_name'),
							_l('allocation_reason'),
							_l('category'),
							_l('current_location'),
							_l('stock_quantity'),
							_l('created_user'),
							_l('wo_no'),
						),'allocated_items'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		initDataTable('.table-allocated_items', window.location.href);
	});
</script>