<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<?php
			echo form_open($this->uri->uri_string(),array('id'=>'estimate-form','class'=>'_transaction_form'));
			if(isset($estimate)){
				echo form_hidden('isedit');
			}
			?>
			<div class="col-md-12">
				<?php $this->load->view('admin/estimates/estimate_template'); ?>
			</div>
			<?php echo form_close(); ?>
			<?php $this->load->view('admin/invoice_items/item'); ?>
		</div>
	</div>
</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		validate_estimate_form();
		// Init accountacy currency symbol
		init_currency();
		// Project ajax search
		init_ajax_project_search_by_customer_id();
		// Maybe items ajax search
	    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
	});

	/*Quote Item part*/

	$("body").on('change', 'select[name="item_select"]', function () {
	    var itemid = $(this).selectpicker('val');
	    console.log('aaaa')
	    if (itemid != '') {
	        add_item_to_preview_quote(itemid);
	    }
	});

	$('#pack_capacity').change(function(){
	  var pack_capacity = $(this).val();
	  requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
	    $('input[name="volume_m3"]').val(response.volume);
	  });
	})

	$('.pack_capacity').change(function(){
	  var pack_capacity = $(this).val();
	  var currentV = $(this).parents('tr').children()[7].firstChild;
	  console.log(currentV)
	  requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
	    currentV.value = response.volume;
	  });
	})

	// $('input[name="discount_percent"]').keyup(function(){
	//   calculate_total_quote()
	// })

	// $('input[name="discount_total"]').keyup(function(){
	//   calculate_total_quote()
	// })

	$('input[name="discount_percent"]').change(function(){
	  calculate_total_quote()
	})

	$('input[name="discount_total"]').change(function(){
	  calculate_total_quote()
	})

	$(document).ready(function(){
	  calculate_total_quote();
	})
	
</script>
</body>
</html>
