<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="panel_s">
					<?php
						$this->load->view('admin/warehouses/dispatching_bay/installation_schedule/installation_calendar.php'); ?>
				</div>
			</div>
			<div class="col-md-3"></div>	
			<?php
				$this->load->view('admin/warehouses/dispatching_bay/list_template');
			?>
		</div>
	</div>
</div>
<script>var hidden_columns = [2,6,7,8];</script>
<?php init_tail(); ?>
<script>
	$(function(){
		initDataTable('.table-dispatching_bay', window.location.href,[],[],[],[0,'desc']);
	});


</script>
</body>
</html>
