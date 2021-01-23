<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content" style="padding-bottom: 0">
		<div class="row">
			<div class="col-md-12">
				<?php $this->load->view('admin/production/work_order/invoice_template'); ?>
			</div>
		</div>

		<div class="content" style="padding-top: 0">
			<div class="row">
				<div class="col-md-6">
					<div class="panel_s">
						<?php
							$this->load->view('admin/production/work_order/rel_plans/plan_calendar.php'); ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel_s">
						<?php
							$this->load->view('admin/production/work_order/installation_schedule/installation_calendar.php'); ?>
					</div>
				</div>		
			</div>
		</div>
	</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		// validate_invoice_form();
	    // Init accountacy currency symbol
	    init_currency();
	    // Project ajax search
	    init_ajax_project_search_by_customer_id();
	    // Maybe items ajax search
	    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
	});

	/* Calendar*/
 //    $(function(){
	// 	if(get_url_param('eventid')) {
	// 		view_plan_event_production(get_url_param('eventid'));
	// 	}
	// });
    $(document).ready(function(){
        $('#wo_phase_id').prop('disabled',true);
        $('#clientid').prop('disabled',true);
    })
	

</script>
</body>
</html>
