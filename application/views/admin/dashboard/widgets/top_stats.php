<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="widget relative" id="widget-<?php echo create_widget_id(); ?>" data-name="<?php echo _l('quick_stats'); ?>">
      <div class="widget-dragger"></div>
      <div class="row">
      <?php
         $initial_column = 'col-lg-3';
         // if(!is_staff_member() && ((!has_permission('invoices','','view') && !has_permission('invoices','','view_own') && (get_option('allow_staff_view_invoices_assigned') == 0
         //   || (get_option('allow_staff_view_invoices_assigned') == 1 && !staff_has_assigned_invoices()))))) {
         //    $initial_column = 'col-lg-6';
         // } else if(!is_staff_member() || (!has_permission('invoices','','view') && !has_permission('invoices','','view_own') && (get_option('allow_staff_view_invoices_assigned') == 1 && !staff_has_assigned_invoices()) || (get_option('allow_staff_view_invoices_assigned') == 0 && (!has_permission('invoices','','view') && !has_permission('invoices','','view_own'))))) {
         //    $initial_column = 'col-lg-4';
         // }
      ?>
         <?php if(has_permission('dashboard','','view') || has_permission('invoices','','view') || has_permission('invoices','','view_own') || (get_option('allow_staff_view_invoices_assigned') == '1' && staff_has_assigned_invoices())){ ?>
         <div class="quick-stats-invoices col-xs-12 col-md-6 col-sm-6 <?php echo $initial_column; ?>">
            <div class="top_stats_wrapper">
               <?php
                  // $total_invoices = total_rows(db_prefix().'invoices','status NOT IN (5,6)'.(!has_permission('invoices','','view') ? ' AND ' . get_invoices_where_sql_for_staff(get_staff_user_id()) : ''));
                  $total_invoices = total_rows(db_prefix().'invoices','status NOT IN (5,6)');
                  // $total_invoices_awaiting_payment = total_rows(db_prefix().'invoices','status NOT IN (2,5,6)'.(!has_permission('invoices','','view') ? ' AND ' . get_invoices_where_sql_for_staff(get_staff_user_id()) : ''));
                  $total_invoices_awaiting_payment = total_rows(db_prefix().'invoices','status NOT IN (2,5,6)');
                  $percent_total_invoices_awaiting_payment = ($total_invoices > 0 ? number_format(($total_invoices_awaiting_payment * 100) / $total_invoices,2) : 0);
                  ?>
               <p class="text-uppercase mtop5"><i class="hidden-sm fa fa-balance-scale"></i> <?php echo _l('pending_invoices'); ?>
                  <span class="pull-right"><?php echo $total_invoices_awaiting_payment; ?> / <?php echo $total_invoices; ?></span>
               </p>
               <!-- <div class="clearfix"></div>
               <div class="progress no-margin progress-bar-mini">
                  <div class="progress-bar progress-bar-danger no-percent-text not-dynamic" role="progressbar" aria-valuenow="<?php echo $percent_total_invoices_awaiting_payment; ?>" aria-valuemin="0" aria-valuemax="100" style="width: 0%" data-percent="<?php echo $percent_total_invoices_awaiting_payment; ?>">
                  </div>
               </div> -->
            </div>
         </div>
         <?php } ?>
         <?php if(is_staff_member()){ ?>
         <div class="quick-stats-leads col-xs-12 col-md-6 col-sm-6 <?php echo $initial_column; ?>">
            <div class="top_stats_wrapper">
               <?php
                  $where = '';
                  // if(!is_admin()){
                  //   $where .= '(created_user = '.get_staff_user_id().' AND approval = 1)';
                  // } else 
                     $where .= '(approval = 1)';
                  $total_pending_purchase_requests = total_rows(db_prefix().'purchase_order',$where);
                  ?>
               <p class="text-uppercase mtop5"><i class="hidden-sm fa fa-tty"></i> <?php echo _l('pending_purchase_request'); ?>
                  <span class="pull-right"><?php echo $total_pending_purchase_requests; ?></span>
               </p>
            </div>
         </div>
         <?php } ?>
         <div class="quick-stats-projects col-xs-12 col-md-6 col-sm-6 <?php echo $initial_column; ?>">
            <div class="top_stats_wrapper">
               <?php
                  $_where = '';
                  // if(!is_admin()){
                  //   $_where .= '(addedfrom = '.get_staff_user_id().')';
                  // }

                  // $total_work_orders = $this->db->query('SELECT COUNT(tblpurchase_order.`id`) as total_rows FROM '.db_prefix().'purchase_order LEFT JOIN ' . db_prefix() . 'purchase_order_phases ON ' . db_prefix() . 'purchase_order_phases.id = ' . db_prefix() . 'purchase_order.purchase_phase_id')->row()->total_rows ;

                  $total_work_orders = total_rows(db_prefix().'invoices','active = 1');
                  ?>
               <p class="text-uppercase mtop5"><i class="hidden-sm fa fa-cubes"></i> <?php echo _l('active_work_orders') ?><span class="pull-right"><?php echo $total_work_orders; ?></span></p>
            </div>
         </div>
         <div class="quick-stats-tasks col-xs-12 col-md-6 col-sm-6 <?php echo $initial_column; ?>">
            <div class="top_stats_wrapper">
               <?php
                  $_where = '';
                  // if(!is_admin()){
                  //   $_where .= '(created_user = '.get_staff_user_id().' AND approval = 0)';
                  // } else 
                     $_where .= '(approval = 0)';

                  $due_purchase_orders = total_rows(db_prefix().'purchase_order',$_where);
                  ?>
               <p class="text-uppercase mtop5"><i class="hidden-sm fa fa-tasks"></i> <?php echo _l('due_purchase_orders'); ?> <span class="pull-right">
                  <?php echo $due_purchase_orders; ?>
                  </span>
               </p>
               
            </div>
         </div>
      </div>
   </div>
