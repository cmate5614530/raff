<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade _event" id="installationNewModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?php echo _l('utility_calendar_new_event_title'); ?></h4>
      </div>
      <?php echo form_open('admin/invoices/installation_calendar',array('id'=>'installation-calendar-form')); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <input type="hidden" name="wo_item_id">

            <div id="installation_events_div">
              <div id="installation_events"></div>
            </div>

            <?php echo render_input('installation_calculate',_l('installation_calculate'),'','number',array('readonly' => true )); ?>

            <input type="hidden" name="start">
            <input type="hidden" name="end">
            <input type="hidden" name="title">
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
    <button id="installation_new_submit" type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
  </div>
  <?php echo form_close(); ?>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->