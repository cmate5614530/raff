
<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<?php $this->load->view('admin/planing/list_template'); ?>
		</div>
	</div>
</div>
<div id="convert_helper"></div>
<?php init_tail(); ?>
<script>var hidden_columns = [2,5,6,8,9];</script>
<script>
	$(function(){
		// init_estimate();
		initDataTable('.table-p_sale_order', window.location.href);
	});
</script>
</body>
</html>

