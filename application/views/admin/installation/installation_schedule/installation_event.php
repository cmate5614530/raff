<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade _event" id="viewInstallationEvent">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?php echo $event->title; ?></h4>
      </div>
      <?php echo form_open('admin/invoices/installation_calendar',array('id'=>'installation-event-form')); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <?php if($event->userid != get_staff_user_id()){ ?>
              <div class="alert alert-info"><?php echo _l('event_created_by','<a href="'.admin_url('profile/'.$event->userid).'" target="_blank">'.get_staff_full_name($event->userid)).'</a>'; ?></div>
            <?php } ?>
            <?php if($event->userid == get_staff_user_id() || is_admin()){ ?>
              <?php echo form_hidden('eventid',$event->eventid); ?>

              <input type="hidden" id="wo_item_id" name="wo_item_id" value="<?php echo $event->wo_item_id?>">

              <div id="edit_installation_events_div">
                <div id="edit_installation_events"></div>
              </div>
              <input type="hidden" name="start" value="<?php echo $event->start;?>">
              <input type="hidden" name="end" value="<?php echo $event->end;?>">
              <input type="hidden" name="title" value="<?php echo $event->title;?>">
              
           <hr />
           <p class="bold"><?php echo _l('event_color'); ?></p>
           <?php
           $event_colors = '';
           $favourite_colors = get_system_favourite_colors();
           $i = 0;
           foreach($favourite_colors as $color){
            $color_selected_class = 'cpicker-small';
            if($color == $event->color){
              $color_selected_class = 'cpicker-big';
            }
            $event_colors .= "<div class='calendar-cpicker cpicker ".$color_selected_class."' data-color='".$color."' style='background:".$color.";border:1px solid ".$color."'></div>";
            $i++;
          }
          echo '<div class="cpicker-wrapper">';
          echo $event_colors;
          echo '</div>';
          echo form_hidden('color',$event->color);
          ?>

          <div class="clearfix"></div>
          <hr />
          <!-- <div class="checkbox checkbox-primary">
            <input type="checkbox" name="public" id="event_public" <?php if($event->public == 1){echo 'checked';} ?>>
            <label for="event_public"><?php echo _l('utility_calendar_new_event_make_public'); ?></label>
          </div> -->
        <?php } else { ?>
          <a href="<?php echo admin_url('profile/'.$event->userid); ?>"><?php echo staff_profile_image($event->userid,array('staff-profile-xs-image')); ?> <?php echo get_staff_full_name($event->userid); ?></a>
          <hr />
          <h5 class="bold"><?php echo _l('event_description'); ?></h5>
          <p><?php echo $event->description; ?></p>
          <h5 class="bold"><?php echo _l('utility_calendar_new_event_start_date'); ?></h5>
          <p><?php echo _dt($event->start); ?></p>
          <?php if(is_date($event->end)){ ?>
            <h5 class="bold"><?php echo _l('utility_calendar_new_event_end_date'); ?></h5>
            <p><?php echo _dt($event->end); ?></p>
          <?php } ?>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
    <?php if($event->userid == get_staff_user_id() || is_admin()){ ?>
      <button type="button" class="btn btn-danger" onclick="delete_installation_event(<?php echo $event->eventid; ?>); return false"><?php echo _l('delete_event'); ?></button>
      <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
    <?php } ?>
  </div>
  <?php echo form_close(); ?>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
