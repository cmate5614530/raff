<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="clearfix"></div>
						<hr class="hr-panel-heading" />
						<div class="clearfix"></div>
						<?php render_datatable(array(
							_l('wo_heading_number'),
							_l('wo_phase_id'),
							_l('client'),
							_l('tags'),
							_l('sum_volume_m3'),
							_l('created_user'),
							_l('date_time'),
							_l('updated_user'),
						),'production-work-order'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		initDataTable('.table-production-work-order', window.location.href, [2], [2]);
	});
</script>