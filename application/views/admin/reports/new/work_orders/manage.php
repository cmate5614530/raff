<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="panel_s">
					<div class="panel-body">
						<div class="_buttons">
							<div class="row">
								<div class="col-md-4">
                    <div class="form-group">
                        <label for="staffs"><?php echo _l('salesperson'); ?></label>
                        <select name="staffs" id="staffs" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                           <?php foreach($staffs as $staff){ ?>
                               <option value="<?php echo $staff['staffid']; ?>"><?php echo $staff['firstname'].' '.$staff['lastname'] ?></option>
                            <?php } ?>
                        </select>
                        <div class="_filters _hidden_inputs staffs">
                            <?php
                               foreach($staffs as $staff){?>
                                <input type="hidden" class="filter staff" name="staff_<?php echo $staff['staffid']?>">
                               <?php }?>
                         </div>
                    </div>
                  </div>
                 <div class="col-md-4">
                    <div class="form-group">
                        <label for="customers"><?php echo _l('client'); ?></label>
                        <select name="customers" id="customers" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                           <?php foreach($customers as $customer){ ?>
                               <option value="<?php echo $customer['userid']; ?>"><?php echo $customer['company'] ?></option>
                            <?php } ?>
                        </select>
                        <div class="_filters _hidden_inputs customers">
                            <?php
                               foreach($customers as $customer){?>
                                <input type="hidden" class="filter customer" name="customer_<?php echo $customer['userid']?>">
                               <?php }?>
                         </div>
                    </div>
                 </div>

                 <div class="col-md-4">
                      <div class="form-group">
                          <label for="work_order_phases"><?php echo _l('current_phase'); ?></label>
                          <select name="work_order_phases" id="work_order_phases" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                             <?php foreach($work_order_phases as $phase){ ?>
                                 <option value="<?php echo $phase['order_no']; ?>"><?php echo $phase['phase'] ?></option>
                              <?php } ?>
                          </select>
                          <div class="_filters _hidden_inputs work_order_phases">
                              <?php
                                 foreach($work_order_phases as $phase){?>
                                  <input type="hidden" class="filter phase" name="phase_<?php echo $phase['order_no']?>">
                                 <?php }?>
                           </div>
                      </div>
                 </div>

							</div>

              <div id="date-range" class="mbot15">
                <div class="row">
                   <div class="col-md-4">
                     <!--  <label for="report-from" class="control-label"><?php echo _l('report_sales_from_date'); ?></label>
                      <div class="input-group date">
                         <input type="text" class="form-control datepicker" id="report-from" name="report-from">
                         <div class="input-group-addon">
                            <i class="fa fa-calendar calendar-icon"></i>
                         </div>
                      </div> -->
                      <?php echo render_date_input('report-from','report_sales_from_date'); ?>
                   </div>
                   <div class="col-md-4">
                      <!-- <label for="report-to" class="control-label"><?php echo _l('report_sales_to_date'); ?></label>
                      <div class="input-group date">
                         <input type="text" class="form-control datepicker" disabled="disabled" id="report-to" name="report-to">
                         <div class="input-group-addon">
                            <i class="fa fa-calendar calendar-icon"></i>
                         </div>
                      </div> -->
                      <?php echo render_date_input('report-to','report_sales_to_date','',array('disabled'=> true)); ?>
                   </div>

                   <div class="col-md-4">
                    <div class="form-group">
                        <label for="archive"><?php echo _l('filter_by_archived'); ?></label>
                        <select name="archive" id="archive" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                          <option value="1"><?php echo _l('with_archive') ?></option>
                          <option value="0"><?php echo _l('without_archive') ?></option>
                        </select>
                        <div class="_filters _hidden_inputs archive">
                            <input type="hidden" class="filter archive" name="with_archive">
                            <input type="hidden" class="filter archive" name="without_archive">
                         </div>
                    </div>
                  </div>
                </div>
             </div>

						</div>
						<div class="clearfix"></div>
            <hr class="hr-panel-heading" />
            <div class="clearfix"></div>
						<?php render_datatable(array(
							_l('wo_heading_number'),
							_l('salesperson'),
							_l('client'),
							_l('created_at'),
							_l('current_phase'),
							_l('req_shipping_date'),
							_l('shipping_type'),
						),'work-order-report'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){

		$('#staffs').change(function(){
        $('.filter.staff').val('')
        var staffs = $('#staffs').val();
        if(staffs.length == 0)
        {
            dt_custom_view('','.table-work-order-report'); return false;

        } else 
            for(let i = 0; i < staffs.length; i++)
            {
                dt_custom_view('staff_'+ staffs[i], '.table-work-order-report','staff_'+ staffs[i]); 
            }
    })

    $('#customers').change(function(){
        $('.filter.customer').val('')
        var customers = $('#customers').val();
        if(customers.length == 0)
        {
            dt_custom_view('','.table-work-order-report'); return false;

        } else 
            for(let i = 0; i < customers.length; i++)
            {
                dt_custom_view('customer_'+ customers[i], '.table-work-order-report','customer_'+ customers[i]); 
            }
    })

    $('#work_order_phases').change(function(){
        $('.filter.phase').val('')
        var work_order_phases = $('#work_order_phases').val();
        if(work_order_phases.length == 0)
        {
            dt_custom_view('','.table-work-order-report'); return false;

        } else 
            for(let i = 0; i < work_order_phases.length; i++)
            {
                dt_custom_view('phase_'+ work_order_phases[i], '.table-work-order-report','phase_'+ work_order_phases[i]); 
            }
    })

    $('#archive').change(function(){
          $('.filter.archive').val('')
          var archive = $('#archive').val();
          if(archive == 1)
            dt_custom_view(1, '.table-work-order-report','with_archive'); 
          else if(archive == 0)
            dt_custom_view(1, '.table-work-order-report','without_archive'); 
      })


      var fnServerParams = {
        "report_from": '[name="report-from"]',
        "report_to": '[name="report-to"]',
        "with_archive" : '[name="with_archive"]',
        "without_archive" : '[name="without_archive"]',
      };

    $.each($('._hidden_inputs._filters.staffs input'),function(){
       fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
     });
    $.each($('._hidden_inputs._filters.customers input'),function(){
       fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
     });
    $.each($('._hidden_inputs._filters.work_order_phases input'),function(){
       fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
     });

    var report_from = $('input[name="report-from"]');
    var report_to = $('input[name="report-to"]');

    report_from.on('change', function() {
        var val = $(this).val();
        var report_to_val = report_to.val();
        if (val != '') {
           report_to.attr('disabled', false);
           if (report_to_val != '') {
             filter_by_date();
           }
         } else {
           report_to.attr('disabled', true);
         }
    });

      report_to.on('change', function() {
        var val = $(this).val();
        if (val != '') {
           filter_by_date();
         }
    });

    function filter_by_date() {
       if ($.fn.DataTable.isDataTable('.table-work-order-report')) {
         $('.table-work-order-report').DataTable().destroy();
       }
       initDataTable('.table-work-order-report', window.location.href,[],[],fnServerParams,[0, 'asc']);
     }
     
		initDataTable('.table-work-order-report', window.location.href,[],[],fnServerParams,[0, 'asc']);
	});
</script>