<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade _event" id="viewMachineEvent">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?php echo _l('edit_day_produced_qty')?></h4>
      </div>
      <?php echo form_open('admin/production/day_production_qty',array('id'=>'calendar-event-form')); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px"> 
            <span id="machine_name_on_view"></span>
            <span id="date_on_view" class="pull-right"></span>
          </div>
          <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px"> 
            <div class="col-md-6">
              <label for="total_p_qty_on_view"><?php echo _l('total_p_qty')?> :</label>
              <span id="total_p_qty_on_view"></span>
            </div>
            <div class="col-md-6">
              <label for="needed_p_qty_on_view"><?php echo _l('needed_p_qty')?> :</label>
              <span id="needed_p_qty_on_view"></span>
            </div>
          </div>
          <div class="col-md-12">
            <?php
              $id = (isset($produced_qty) ? $produced_qty->p_qty_id : '');
              echo form_hidden('p_qty_id',$id);
               ?>
            <?php 
                $mid = (isset($produced_qty) ? $produced_qty->machine_id : '');
                echo form_hidden('machine_id',$mid); ?>
            <?php 
              $value = (isset($produced_qty) ? $produced_qty->produced_quantity : '');
              echo render_input('produced_quantity',_l('produced_quantity'),$value,'number',array('placeholder'=>_l('enter_produced_quantity'))); ?>

            <?php 
              $value = (isset($produced_qty) ? $produced_qty->waste_production_quantity : '');
              echo render_input('waste_production_quantity',_l('waste_production_quantity'),$value,'number',array('placeholder'=>_l('enter_waste_production_quantity'))); ?>
          </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
    <?php if($produced_qty->userid == get_staff_user_id() || is_admin()){ ?>
      <!-- <button type="button" class="btn btn-danger" onclick="delete_event(<?php echo $produced_qty->p_qty_id; ?>); return false"><?php echo _l('delete_event'); ?></button> -->
      <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
    <?php } ?>
  </div>
  <?php echo form_close(); ?>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
