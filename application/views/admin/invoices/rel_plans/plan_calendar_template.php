<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade _event" id="planNewEventModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?php echo _l('utility_calendar_new_event_title'); ?></h4>
      </div>
      <?php echo form_open('admin/invoices/calendar',array('id'=>'busy_machine_events-form')); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <input type="hidden" name="recipe_id">

            <?php
               echo render_select('mould_id',$moulds,array('id','mould_name'),_l('mould_id')); ?>

            <div class="form-group">
              <label for="machine_id"><?php echo _l('machine_in_mould_suitablity') ?></label>
              <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                    <select data-fieldto="machine_id" data-fieldid="machine_id" name="machine_id" id="machine_id" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98">
                    </select>
                </div>
            </div> 
            <div id="busy_machine_events_div">
              <div id="busy_machine_events"></div>
            </div>
            <input type="hidden" name="start">
            <input type="hidden" name="end">
            <input type="hidden" name="title">
            <?php echo render_input('production_calculate',_l('production_calculate'),'','number',array('readonly' => true )); ?>
            <?php echo render_input('total_production_qty',_l('total_production_qty'),'','number'); ?>
         <hr />
         <p class="bold"><?php echo _l('event_color'); ?></p>
         <?php
         $event_colors = '';
         $favourite_colors = get_system_favourite_colors();
         $i = 0;
         foreach($favourite_colors as $color){
          $color_selected_class = 'cpicker-small';
          if($i == 0){
            $color_selected_class = 'cpicker-big';
          }
          $event_colors .= "<div class='calendar-cpicker cpicker ".$color_selected_class."' data-color='".$color."' style='background:".$color.";border:1px solid ".$color."'></div>";
          $i++;
        }
        echo '<div class="cpicker-wrapper">';
        echo $event_colors;
        echo '</div>';
        echo form_hidden('color',$favourite_colors[0]);
        ?>
        <div class="clearfix"></div>
        <hr />
        <!-- <div class="checkbox checkbox-primary">
          <input type="checkbox" name="public" id="public">
          <label for="public"><?php echo _l('utility_calendar_new_event_make_public'); ?></label>
        </div> -->
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
    <button id="plan_new_submit" type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
  </div>
  <?php echo form_close(); ?>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
