<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade _event" id="machineNewEventModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?php echo _l('add_produced_qty'); ?></h4>
      </div>
      <?php echo form_open('admin/production/day_production_qty',array('id'=>'calendar-event-form')); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px"> 
            <span id="machine_name"></span>
            <span id="date" class="pull-right"></span>
          </div>
          <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px"> 
            <div class="col-md-6">
              <label for="total_p_qty"><?php echo _l('total_p_qty')?> :</label>
              <span id="total_p_qty"></span>
            </div>
            <div class="col-md-6">
              <label for="needed_p_qty"><?php echo _l('needed_p_qty')?> :</label>
              <span id="needed_p_qty"></span>
            </div>
          </div>
          <div class="col-md-12">
            <?php echo form_hidden('current_time_selection'); ?>
            <?php echo form_hidden('machine_id'); ?>
            <?php echo form_hidden('rel_event_id'); ?>
            <?php echo render_input('produced_quantity',_l('produced_quantity'),'','number',array('placeholder'=>_l('enter_produced_quantity'))); ?>
            <?php echo render_input('waste_production_quantity',_l('waste_production_quantity'),'','number',array('placeholder'=>_l('enter_waste_production_quantity'))); ?>
          </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
    <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
  </div>
  <?php echo form_close(); ?>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
