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
				<?php $this->load->view('admin/invoices/invoice_template'); ?>
			</div>
			<?php echo form_close(); ?>
			<?php $this->load->view('admin/invoice_items/item'); ?>
		</div>

		<div class="content" style="padding-top: 0">
			<div class="row">
				<div class="col-md-6">
					<div class="panel_s">
						<?php
							$this->load->view('admin/invoices/rel_plans/plan_calendar.php'); ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel_s">
						<?php
							$this->load->view('admin/invoices/installation_schedule/installation_calendar.php'); ?>
					</div>
				</div>		
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="quick_purchase_confirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">
					<span class="edit-title"><?php echo _l('quick_purchase_confirm_title'); ?></span>
				</h4>
			</div>

			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<?php echo _l('quick_purchase_confirm_que'); ?>
					</div>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" id="quick_purchase_yes" class="btn btn-info"><?php echo _l('quick_purchase_yes'); ?></button>
				<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('quick_purchase_no'); ?></button>
				
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

	$("body").on('change', 'select[name="item_select"]', function () {
	    var itemid = $(this).selectpicker('val');
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

	function add_item_to_table_wo(data, itemid, merge_invoice, bill_expense){
	    // If not custom data passed get from the preview
	    data = typeof(data) == 'undefined' || data == 'undefined' ? get_item_preview_values_quote() : data;
	    if (data.item_id === "" && data.product_name === "") { return; }

	    requestGetJSON('warehouses/get_pack_by_capacity').done(function(res) {
	      var pack_capacity = '<option></option>';
	      res.forEach(e => {
	          if(e.pack_capacity == data.pack_capacity)
	              pack_capacity += '<option value="'+e.pack_capacity+'" selected>'+e.pack_capacity+'</option>';
	          else
	              pack_capacity += '<option value="'+e.pack_capacity+'">'+e.pack_capacity+'</option>';
	      })
	      data.pack_capacity = pack_capacity;

	      requestGetJSON('warehouses/get_units').done(function(res) {
	        var unit = '<option></option>';
	        res.forEach(e => {
	            if(e.unitid == data.unitid)
	                unit += '<option value="'+e.unitid+'" selected>'+e.name+'</option>';
	            else
	                unit += '<option value="'+e.unitid+'">'+e.name+'</option>';
	        })
	        data.unit = unit;

	        var table_row = '';
	        var item_key = $("body").find('tbody .item').length + 1;

	        table_row += '<tr class="sortable item">';

	        $("body").append('<div class="dt-loader"></div>');
	        var regex = /<br[^>]*>/gi;
	        
	        table_row += '<input type="hidden" class="order" name="wo_items[newitems][' + item_key + '][item_order]">';

	        table_row += '<td class="bold description"><input type="text" name="wo_items[newitems][' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"><input type="hidden" name="wo_items[newitems][' + item_key + '][rel_product_id]" value="'+data.rel_product_id+'"></td>';
	        
	        table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="pack_capacity" data-fieldid="pack_capacity" name="wo_items[newitems][' + item_key + '][pack_capacity]" id="wo_items[newitems][' + item_key + '][pack_capacity]" class="selectpicker form-control pack_capacity" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+data.pack_capacity+'</select></div></td>';

	        table_row += '<td><input type="number" data-quantity name="wo_items[newitems][' + item_key + '][qty]" class="form-control" value="'+data.qty+'" onkeyup="calculate_total_quote();" onchange="calculate_total_quote();"></td>';

	        table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="wo_items[newitems][' + item_key + '][unit]" id="wo_items[newitems][' + item_key + '][unit]" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+data.unit+'</select></div></td>';

	        table_row += '<td><input type="number" name="wo_items[newitems][' + item_key + '][volume_m3]" readonly class="form-control volume_m3" value="'+data.volume_m3+'"></td>';

	        if(data.approval_need) {

	            table_row += '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" checked  name="wo_items[newitems][' + item_key + '][approval_need]" disabled><label></label></div>';
	        }
	        else{

	            table_row += '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox"  name="wo_items[newitems][' + item_key + '][approval_need]" disabled><label></label></div></td>';
	        }

	        table_row += '<td><input type="text" name="wo_items[newitems][' + item_key + '][notes]" readonly class="form-control" value="'+data.notes+'"></td>';

	        table_row += '<td><a href="#" class="btn btn-danger" onclick="delete_wo_item(this,' + itemid + '); return false;"><i class="fa fa-trash"></i></a></td>';

	        table_row += '</tr>';

	        $('table.wo-items tbody').append(table_row);

	        $(document).trigger({
	            type: "item-added-to-table",
	            data: data,
	            row: table_row
	        });

	        setTimeout(function() {
	            calculate_total_quote();
	        }, 15);

	        if ($('#item_select').hasClass('ajax-search') && $('#item_select').selectpicker('val') !== '') {
	            $('#item_select').prepend('<option></option>');
	        }

	        init_selectpicker();
	        init_datepicker();
	        init_color_pickers();
	        clear_item_preview_values_quote();
	        reorder_items();
	        $('body').find('#items-warning').remove();
	        $("body").find('.dt-loader').remove();
	        $('#item_select').selectpicker('val', '');
	      })
	    })
	}

	$('.pack_capacity').change(function(){
	  var pack_capacity = $(this).val();
	  var currentV = $(this).parents('tr').children()[7].firstChild;
	  requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
	    currentV.value = response.volume;
	  });
	})

	function delete_wo_item(row, itemid) {
	    $(row).parents('tr').addClass('animated fadeOut', function() {
	        setTimeout(function() {
	            $(row).parents('tr').remove();
	            calculate_total_quote();
	        }, 50);
	    });
	    // If is edit we need to add to input removed_items to track activity
	    if ($('input[name="isedit"]').length > 0) {
	        $('#wo_removed-items').append(hidden_input('wo_removed-items[]', itemid));
	    }
	}

	$(document).ready(function(){

	  var wo_rows = $('.table.wo-items tbody tr.item');
	  var recipe_rows_save_check = $('.table.recipe-items tbody tr.item').find('.schedule');
	  var i = 0;
	  $.each(wo_rows, function(){
	  	let product_id = $(this).find('.rel_product_id').val();
	  	var wo_item_qty = $(this).find('[data-quantity]').val();
	  	if(recipe_rows_save_check.length  < 1){
	  		requestGetJSON('products/get_recipes_by_product/' + product_id).done(function(response) {
		        response.forEach(e => {
		        	if(e.pre_produced == 1)
		        	{
		        		requestGetJSON('products/get_recipes_by_product/' + e.ingredient_item_id).done(function(response) {
		        			response.forEach(item => {
		        				add_item_to_table_plan_recipe(item,i,wo_item_qty*e.used_qty);
		        				i++;
		        			})
		        		});
		        	}
		        	add_item_to_table_plan_recipe(e,i,wo_item_qty)
		        	i++;
		        })
		    });
	  	}
	  })
	  
	})

	function add_item_to_table_plan_recipe(data,i,rel_wo_qty) {
		console.log(data);
        requestGetJSON('products/get_moulds_by_ajax').done(function(res) {
            var option = '<option></option>';
            res.forEach(e => {
                if(e.id == data.mould)
                    option += '<option value="'+e.id+'" selected>'+e.mould_name+'</option>';
                else
                    option += '<option value="'+e.id+'">'+e.mould_name+'</option>';
            })
            data.option = option;
            var table_row = '';
            var item_key = i;
            if(data.pre_produced == 1)
            	table_row += '<tr class="sortable item" style="display:none">';
            else
            	table_row += '<tr class="sortable item">';

            table_row += '<td><span style="color: green;font-weight: 600;font-size: 14px">'+data.wo_product+'</span><input type="hidden" name="plan_items[' + item_key + '][wo_product_id]" value="'+data.wo_product_id+'"></td>';

            table_row += '<input type="hidden" name="plan_items[' + item_key + '][item_id]" value = "' + data.id + '"><td class="bold description"><input type="text" name="plan_items[' + item_key + '][product_code]" class="form-control product_code" value="'+data.product_code+'"></td>';

            table_row += '<input type="hidden" name="plan_items[' + item_key + '][item_id]" value = "' + data.id + '"><td class="bold description"><input type="text" name="plan_items[' + item_key + '][product_name]" class="form-control" value="'+data.product_name+'"><input type="hidden" name="plan_items[' + item_key + '][ingredient_item_id]" class="form-control" value="' + data.ingredient_item_id + '"><input type="hidden" name="plan_items[' + item_key + '][pre_produced]" value = "' + data.pre_produced + '"></td>';

            table_row += '<td></td>';
            table_row += '<td></td>';

            table_row += '<td><input type="text" name="plan_items[' + item_key + '][stock_level]" class="form-control" value="'+data[0]+'" disabled></td>';

            table_row += '<td><input type="number" name="plan_items[' + item_key + '][used_qty]" class="form-control qty" onkeyup = "material_cost_calc_for_added(this)" value="' + rel_wo_qty*data.used_qty + '"></td>';

            table_row += '<td><input type="number" name="plan_items[' + item_key + '][rate_of_waste]" class="form-control" onkeyup = "material_cost_calc_for_added(this)" value="' + data.rate_of_waste + '"></td>';

            table_row += '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="plan_items[' + item_key + '][mould]" id="plan_items[' + item_key + '][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'+data.option+'</select></div></td>';

            table_row += '<td><input type="text" readonly name="plan_items[' + item_key + '][mould_cavity]" class="form-control mould_cavity" value="' + data.mould_cavity + '"></td>';

            table_row += '<td><input type="number" name="plan_items[' + item_key + '][cycle_time]" class="form-control cycle_time" value="' + data.cycle_time + '"><input type="hidden" name="plan_items[' + item_key + '][connected_pair]" class="form-control" value="' + data.connected_pair + '"></td>';
 
            table_row += '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_plan_recipe_item(this,' + data.id + '); return false;"><i class="fa fa-trash"></i></a></td>';

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

	/* Calendar*/
    $(function(){
		if(get_url_param('eventid')) {
			view_plan_event(get_url_param('eventid'));
		}
	});

	function set_plan(row,wo_product_id, ingredient_item_id)
	{
		$('#busy_machine_events').empty();
		var qty = $(row).parents('tr').find('.qty').val();
		var mould_sel = $(row).parents('tr').find('.mouldid')[1];
		var mould_id = mould_sel.options[mould_sel.selectedIndex].value;
		var mould_cavity = $(row).parents('tr').find('.mould_cavity').val();
		var cycle_time = $(row).parents('tr').find('.cycle_time').val();
		var production_time = ((qty/mould_cavity)*cycle_time/60/24).toFixed(6);
		$('input[name="recipe_id"]').val($(row).parents('tr').children()[0].value);		
		$('input[name="production_calculate"]').val(parseInt(production_time)+1);

		var used_qty;
		$.post(admin_url+'products/get_product_recipes_by_ingredient/', {ingredient_item_id:ingredient_item_id, wo_product_id:wo_product_id}).done(function(response) {
			used_qty = JSON.parse(response).used_qty;
			$('input[name="total_production_qty"]').val(parseFloat(qty/used_qty));
		});
		
		$('select[name="mould_id"]').selectpicker('val',mould_id);
		$('select[name="mould_id"]').prop('disabled', true);
		$('#planNewEventModal').modal('show');

		var option = '<option></option>';
		requestGetJSON('invoices/get_machine_by_mould/' + mould_id).done(function(res) {
			
			res.forEach(e => {
				requestGetJSON('manufacturing_settings/get_list_machine_by_id/'+ e.machine_id).done(function(data){
					option += '<option value="'+ data.id +'">'+data.name+'</option>';
					$('#machine_id').empty();
					$('#machine_id').append(option);
					$('#machine_id').selectpicker('refresh');
				})
			})
		})

	}

	$('#machine_id').change(function(){

		var machine_id = $(this).val();
		var wo_id = '<?php echo $invoice->id;?>';
    	var wo_item_mould = $('#mould_id option:selected').text();

		$('#busy_machine_events').remove();
        $('#busy_machine_events_div').append('<div id="busy_machine_events"></div>')
        validate_calendar_form();
        var calendar_settings = {
            themeSystem: 'bootstrap3',
            customButtons: {},
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,viewFullCalendar,calendarFilter'
            },
            editable: false,
            eventLimit: parseInt(app.options.calendar_events_limit) + 1,

            views: {
                day: {
                    eventLimit: false
                }
            },
            defaultView: app.options.default_view_calendar,
            isRTL: (isRTL == 'true' ? true : false),
            eventStartEditable: false,
            timezone: app.options.timezone,
            firstDay: parseInt(app.options.calendar_first_day),
            year: moment.tz(app.options.timezone).format("YYYY"),
            month: moment.tz(app.options.timezone).format("M"),
            date: moment.tz(app.options.timezone).format("DD"),
            loading: function(isLoading, view) {
                isLoading && $('#machine_calendar .fc-header-toolbar .btn-default').addClass('btn-info').removeClass('btn-default').css('display', 'block');
                !isLoading ? $('.dt-loader').addClass('hide') : $('.dt-loader').removeClass('hide');
            },
            eventSources: [{
                url: admin_url + 'utilities/get_calendar_data_by_machine/'+ machine_id,
                data: function() {
                    var params = {};
                    $('#calendar_filters').find('input:checkbox:checked').map(function() {
                        params[$(this).attr('name')] = true;
                    }).get();
                    if (!jQuery.isEmptyObject(params)) {
                        params['calendar_filters'] = true;
                    }
                    return params;
                },
                type: 'POST',
                error: function() {
                    // console.error('There was error fetching calendar data');
                },
            }, ],
            selectable: true,
			select: function (start, end) {
				var title = 'wo'+'-'+wo_id+'-'+wo_item_mould;
				var eventData;
				if(title){
					eventData = {
						title:title,
						start:start,
						end:end
					}
					$('#busy_machine_events').fullCalendar("renderEvent", eventData, true);
				};
				$("#busy_machine_events").fullCalendar("unselect");
				if(eventData)
				{
					$('input[name="title"]').val(eventData.title);
				    var sd = eventData.start.format();
	                if (!$.fullCalendar.moment(sd).hasTime()) {
	                    sd += ' 00:00';
	                }
	                var vformat = (app.options.time_format == 24 ? app.options.date_format + ' H:i' : app.options.date_format + ' g:i A');
	                var fmt = new DateFormatter();
	                var d1 = fmt.formatDate(new Date(sd), vformat);
	                $("input[name='start']").val(d1);

	                var ed = eventData.end.format();
	                if (!$.fullCalendar.moment(ed).hasTime()) {
	                    ed += ' 00:00';
	                }
	                var vformat = (app.options.time_format == 24 ? app.options.date_format + ' H:i' : app.options.date_format + ' g:i A');
	                var fmt = new DateFormatter();
	                var d2 = fmt.formatDate(new Date(ed), vformat);
	                $("input[name='end']").val(d2);
					
				}
			},
			editable:true,
        };
        calendar_settings.customButtons.calendarFilter = {
            text: app.lang.filter_by.toLowerCase(),
            click: function() {
                slideToggle('#calendar_filters');
            }
        };
        $('#busy_machine_events').fullCalendar(calendar_settings);
	})

	function one_machine_schedule(machine_id = '', machine_name = '')
    {
        $('#machine_calendar').remove();
        $('#machine_calendear_div').append('<div id="machine_calendar"></div>')
        validate_calendar_form();
        var calendar_settings = {
            themeSystem: 'bootstrap3',
            customButtons: {},
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,viewFullCalendar,calendarFilter'
            },
            editable: false,
            eventLimit: parseInt(app.options.calendar_events_limit) + 1,

            views: {
                day: {
                    eventLimit: false
                }
            },
            defaultView: app.options.default_view_calendar,
            isRTL: (isRTL == 'true' ? true : false),
            eventStartEditable: false,
            timezone: app.options.timezone,
            firstDay: parseInt(app.options.calendar_first_day),
            year: moment.tz(app.options.timezone).format("YYYY"),
            month: moment.tz(app.options.timezone).format("M"),
            date: moment.tz(app.options.timezone).format("DD"),
            loading: function(isLoading, view) {
                isLoading && $('#machine_calendar .fc-header-toolbar .btn-default').addClass('btn-info').removeClass('btn-default').css('display', 'block');
                !isLoading ? $('.dt-loader').addClass('hide') : $('.dt-loader').removeClass('hide');
            },
            eventSources: [{
                url: admin_url + 'utilities/get_calendar_data_by_machine/'+ machine_id,
                data: function() {
                    var params = {};
                    $('#calendar_filters').find('input:checkbox:checked').map(function() {
                        params[$(this).attr('name')] = true;
                    }).get();
                    if (!jQuery.isEmptyObject(params)) {
                        params['calendar_filters'] = true;
                    }
                    return params;
                },
                type: 'POST',
                error: function() {
                    // console.error('There was error fetching calendar data');
                },
            }, ],
            dayClick: function(date, jsEvent, view) {
                var d = date.format();
                view_produced_qty(d,machine_id,machine_name)
                return false;
            }
        };
        if ($("body").hasClass('dashboard')) {
            calendar_settings.customButtons.viewFullCalendar = {
                text: app.lang.calendar_expand,
                click: function() {
                    window.location.href = admin_url + 'utilities/calendar';
                }
            };
        }
        calendar_settings.customButtons.calendarFilter = {
            text: app.lang.filter_by.toLowerCase(),
            click: function() {
                slideToggle('#calendar_filters');
            }
        };
        $('#machine_calendar').fullCalendar(calendar_settings);
        var new_event = get_url_param('new_event');
        if (new_event) {
            $("input[name='start'].datetimepicker").val(get_url_param('date'));
            $('#machineNewEventModal').modal('show');
        }
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

    function set_installation_plan(row, wo_item_id){

    	var wo_id = '<?php echo $invoice->id;?>';
    	var wo_item_product_code = $(row).parents('tr').find('.product_code').val();

    	$('#installationNewModal').modal('show');
    	$('input[name="wo_item_id"]').val(wo_item_id);
    	$('#installation_events').remove();
        $('#installation_events_div').append('<div id="installation_events"></div>')
        validate_calendar_form();
        var calendar_settings = {
            themeSystem: 'bootstrap3',
            customButtons: {},
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,viewFullCalendar,calendarFilter'
            },
            editable: false,
            eventLimit: parseInt(app.options.calendar_events_limit) + 1,

            views: {
                day: {
                    eventLimit: false
                }
            },
            defaultView: app.options.default_view_calendar,
            isRTL: (isRTL == 'true' ? true : false),
            eventStartEditable: false,
            timezone: app.options.timezone,
            firstDay: parseInt(app.options.calendar_first_day),
            year: moment.tz(app.options.timezone).format("YYYY"),
            month: moment.tz(app.options.timezone).format("M"),
            date: moment.tz(app.options.timezone).format("DD"),
            loading: function(isLoading, view) {
                isLoading && $('#machine_calendar .fc-header-toolbar .btn-default').addClass('btn-info').removeClass('btn-default').css('display', 'block');
                !isLoading ? $('.dt-loader').addClass('hide') : $('.dt-loader').removeClass('hide');
            },
            eventSources: [{
                url: admin_url + 'utilities/get_calendar_data_by_wo_item/'+ wo_item_id,
                data: function() {
                    var params = {};
                    $('#calendar_filters').find('input:checkbox:checked').map(function() {
                        params[$(this).attr('name')] = true;
                    }).get();
                    if (!jQuery.isEmptyObject(params)) {
                        params['calendar_filters'] = true;
                    }
                    return params;
                },
                type: 'POST',
                error: function() {
                    // console.error('There was error fetching calendar data');
                },
            }, ],

            selectable: true,
			select: function (start, end) {
				var title = 'wo'+'-'+wo_id+'-'+wo_item_product_code;
				var eventData;
				if(title){
					eventData = {
						title:title,
						start:start,
						end:end
					}
					$('#installation_events').fullCalendar("renderEvent", eventData, true);
				};
				$("#installation_events").fullCalendar("unselect");
				if(eventData)
				{
					$('input[name="title"]').val(eventData.title);
				    var sd = eventData.start.format();
	                if (!$.fullCalendar.moment(sd).hasTime()) {
	                    sd += ' 00:00';
	                }
	                var vformat = (app.options.time_format == 24 ? app.options.date_format + ' H:i' : app.options.date_format + ' g:i A');
	                var fmt = new DateFormatter();
	                var d1 = fmt.formatDate(new Date(sd), vformat);
	                $("input[name='start']").val(d1);

	                var ed = eventData.end.format();
	                if (!$.fullCalendar.moment(ed).hasTime()) {
	                    ed += ' 00:00';
	                }
	                var vformat = (app.options.time_format == 24 ? app.options.date_format + ' H:i' : app.options.date_format + ' g:i A');
	                var fmt = new DateFormatter();
	                var d2 = fmt.formatDate(new Date(ed), vformat);
	                $("input[name='end']").val(d2);
					
				}
			},
        };
        calendar_settings.customButtons.calendarFilter = {
            text: app.lang.filter_by.toLowerCase(),
            click: function() {
                slideToggle('#calendar_filters');
            }
        };
        $('#installation_events').fullCalendar(calendar_settings);

        requestGetJSON('planning/get_installation_time/' + wo_item_id).done(function(response) {
            var qty = $(row).parents('tr').find('[data-quantity]').val();
            var ins_time = response.ins_time;
            var installation_calculate = (qty*ins_time/60/60/24).toFixed(6);
			$('input[name="installation_calculate"]').val(parseInt(installation_calculate)+1);

        });
    }

    $('#busy_machine_events-form').submit(function(){
    	$('#plan_new_submit').prop('disabled',true);
    })
    $('#calendar-event-form').submit(function(){
    	$('#plan_update').prop('disabled', true);
    })
    
    $('#installation-calendar-form').submit(function(){
    	$('#installation_new_submit').prop('disabled',true);
    })

    $('#installation-event-form').submit(function(){
    	$('#installation_event_submit').prop('disabled',true);
    })

    function quick_purchase(row){
    	console.log($(row).parents('tr').find('input[type="hidden"]'))
    	$('#quick_purchase_confirm').modal('show');
    	$('#quick_purchase_yes').click(function(){
    		var date = new Date();
    		approval_date = date.getDate() + '-' + (date.getMonth()+1) + '-' + date.getFullYear();
    		var data = {
    			purchase_phase_id: 11,
    			approval:1,
    			// approval_date: approval_date,
    			newitems:[{
    				product_name:$(row).parents('tr').find('.product_name').val(),
    				ordered_qty:$(row).parents('tr').find('.qty').val(),
    				product_id:$(row).parents('tr').find('input[type="hidden"]')[1].value
    			}],
    			plan_item: $(row).parents('tr').find('input[type="hidden"]')[0].value
    		};
    		$.post(admin_url+'warehouses/quick_purchase_request',data).done(function(response){
    			response = JSON.parse(response);
				if (response.success == true) {
					alert_float('success', response.message);
					$(row).removeClass('btn-warning');
		    		$(row).addClass('btn-info');
		    		$(row).children().removeClass('fa-times-circle');
		    		$(row).children().addClass('fa-check-circle-o');
		    		// $(row).parents('tr').find('.arrival_date').val(response.approval_date)
				}
				$('#quick_purchase_confirm').modal('hide');
				
    		})
    		
    	})
    }

</script>
</body>
</html>
