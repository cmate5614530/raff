<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content" style="padding-bottom: 0">
		<div class="row">
			<?php
			echo form_open($this->uri->uri_string(),array('id'=>'invoice-form','class'=>'_transaction_form invoice-form'));
			if(isset($invoice)){
				echo form_hidden('isedit');
			}
			?>
			<div class="col-md-12">
				<?php $this->load->view('admin/installation/invoice_template'); ?>
			</div>
			<?php echo form_close(); ?>
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

	$(document).ready(function(){

	  var wo_rows = $('.table.wo-items tbody tr.item');
	  var recipe_rows_save_check = $('.table.recipe-items tbody tr.item').find('.btn-info');
	  var i = 0;
	  $.each(wo_rows, function(){
	  	let product_id = $(this).find('.rel_product_id').val();
	  	var wo_item_qty = $(this).find('[data-quantity]').val();
	  	if(recipe_rows_save_check.length  < 1){
	  		requestGetJSON('products/get_recipes_by_product/' + product_id).done(function(response) {
		        response.forEach(e => {
		        	add_item_to_table_plan_recipe(e,i,wo_item_qty)
		        	i++;
		        })
		    });
		    
	  	}
		  	 
	  })
	  
	})

	function add_item_to_table_plan_recipe(data,i,rel_wo_qty) {
        requestGetJSON('products/get_moulds_by_ajax').done(function(res) {
            var option = '<option></option>';
            res.forEach(e => {
                if(e.id == data.mould)
                    option += '<option value="'+e.id+'" selected>'+e.mould_name+'</option>';
                else
                    option += '<option value="'+e.id+'">'+e.mould_name+'</option>';
            })
            // console.log(rel_wo_qty)
            data.option = option;
            var table_row = '';
            // var item_key = $("body").find('.recipe .item').length + 1;
            var item_key = i;
            // table_row += '<tr>';
            table_row += '<tr class="sortable item">';

            table_row += '<td><span style="color: green;font-weight: 600;font-size: 14px">'+data.wo_product+'</span><input type="hidden" name="plan_items[' + item_key + '][wo_product_id]" value="'+data.wo_product_id+'"></td>';

            table_row += '<input type="hidden" name="plan_items[' + item_key + '][item_id]" value = "' + data.id + '"><td class="bold description"><input type="text" name="plan_items[' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"><input type="hidden" name="plan_items[' + item_key + '][ingredient_item_id]" class="form-control" value="' + data.ingredient_item_id + '"></td>';


            table_row += '<td><input type="number" name="plan_items[' + item_key + '][used_qty]" class="form-control qty" onkeyup = "material_cost_calc_for_added(this)" value="' + rel_wo_qty*data.used_qty + '"></td>';

            if(data.pre_produced == 1) {

                table_row += '<td><input type="number" name="plan_items[' + item_key + '][rate_of_waste]" class="form-control" onkeyup = "material_cost_calc_for_added(this)" value=""></td>';
                // table_row += '<td><input type="text" name="plan_items[' + item_key + '][default_machine]" readonly class="form-control" value=""></td>';
                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="plan_items[' + item_key + '][mould]" id="plan_items[' + item_key + '][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" onchange="mould_cavity_added(this)"></select></div></td>';
                table_row += '<td><input type="text" readonly name="plan_items[' + item_key + '][mould_cavity]" class="form-control mould_cavity" value=""></td>';
                table_row += '<td><input type="number" name="plan_items[' + item_key + '][cycle_time]" class="form-control cycle_time" value=""></td>';
            }
            else if(data.pre_produced == 0) {

                table_row += '<td><input type="number" name="plan_items[' + item_key + '][rate_of_waste]" class="form-control" onkeyup = "material_cost_calc_for_added(this)" value="' + data.rate_of_waste + '"></td>';
                // table_row += '<td><input type="text" name="plan_items[' + item_key + '][default_machine]" readonly class="form-control" value="' + data.default_machine + '"></td>';
                table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="plan_items[' + item_key + '][mould]" id="plan_items[' + item_key + '][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+data.option+'</select></div></td>';
                table_row += '<td><input type="text" readonly name="plan_items[' + item_key + '][mould_cavity]" class="form-control mould_cavity" value="' + data.mould_cavity + '"></td>';
                table_row += '<td><input type="number" name="plan_items[' + item_key + '][cycle_time]" class="form-control cycle_time" value="' + data.cycle_time + '"></td>';
            }



            // table_row += '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_plan_recipe_item(this,' + data.id + '); return false;"><i class="fa fa-trash"></i></a></td>';

            // table_row += '<td><a href="#" class="btn btn-info" onclick="set_plan(this,'+ data.id +'); return false;"><i class="fa fa-calendar-plus-o"></i></a></td>';

            table_row += '</tr>';

            $('.recipe tbody').append(table_row);

            $(document).trigger({
                type: "item-added-to-table",
                data: data,
                row: table_row
            });
            if ($('#item_select').hasClass('ajax-search') && $('#item_select').selectpicker('val') !== '') {
                $('#item_select').prepend('<option></option>');
            }

            init_selectpicker();
            init_datepicker();
            init_color_pickers();
            reorder_items();

            $('body').find('#items-warning').remove();
            $("body").find('.dt-loader').remove();
            $('#item_select').selectpicker('val', '');


        });
        
    }

     function delete_plan_recipe_item(row, itemid) {
        $(row).parents('tr').addClass('animated fadeOut', function() {
            setTimeout(function() {
                $(row).parents('tr').remove();
            }, 50);
        });
        $('#recipe_removed-items').append(hidden_input('recipe_removed-items[]', itemid));
    }


    $('#busy_machine_events-form').submit(function(){
    	$('#mould_id').prop('disabled',false);
    })

    function mould_cavity_added(mould)
    {
        var mouldId = $(mould).val();
        default_machine = $(mould).parents('tr').find('.default_machine').children()[0];
        requestGetJSON('manufacturing_settings/get_mould_activity_by_id/' + mouldId).done(function(response) {
            mouldCavity = response.mould_cavity;
            $(mould).parents('tr').find('.mould_cavity').val(mouldCavity)
        });
    }

</script>
</body>
</html>
