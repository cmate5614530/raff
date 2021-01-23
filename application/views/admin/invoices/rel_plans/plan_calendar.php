<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10" style="overflow-x: auto;" id="scheduler">
	<div class="dt-loader hide"></div>
	<h3><?php echo _l('rel_plans')?></h3>
	<?php //$this->load->view('admin/invoices/rel_plans/calendar_filters'); ?>
	<div id="plan_recipe_calendar"></div>
</div>
<?php $this->load->view('admin/invoices/rel_plans/plan_calendar_template'); ?>
<?php hooks()->do_action('after_calendar_loaded');?>
<script>
	app.calendarIDs = '<?php echo json_encode($google_ids_calendars); ?>';
</script>
<!-- </body>
</html> -->
