<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10" style="overflow-x: auto;" id="scheduler">
	<div class="dt-loader hide"></div>
	<h3><?php echo _l('installation')?></h3>
	<div id="installation_calendar"></div>
</div>
<?php $this->load->view('admin/invoices/installation_schedule/installation_calendar_template'); ?>
<?php hooks()->do_action('after_calendar_loaded');?>
<script>
	app.calendarIDs = '<?php echo json_encode($google_ids_calendars); ?>';
</script>
