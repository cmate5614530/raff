<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="widget" id="widget-<?php echo create_widget_id(); ?>" data-name="<?php echo _l('finance_overview'); ?>">
   <?php if(has_permission('invoices','','view') || has_permission('invoices','','view_own') || has_permission('dashboard','','view') || has_permission('sales','','sale_order') || has_permission('sales','','quotation/offer') || (get_option('allow_staff_view_invoices_assigned') == 1 && staff_has_assigned_invoices()) || has_permission('proposals','','view') || has_permission('estimates','','view') || has_permission('estimates','','view_own') || (get_option('allow_staff_view_estimates_assigned') == 1 && staff_has_assigned_estimates()) || has_permission('proposals','','view_own') || (get_option('allow_staff_view_proposals_assigned') == 1 && staff_has_assigned_proposals())){ ?>
   <div class="finance-summary">
      <div class="panel_s">
         <div class="panel-body">
            <div class="widget-dragger"></div>
            <div class="row home-summary">
               <?php 
               if(has_permission('invoices','','view') || has_permission('invoices','','view_own') || has_permission('dashboard','','view') || get_option('allow_staff_view_invoices_assigned') == 1 && staff_has_assigned_invoices()){
                  ?>
                  <div class="col-md-6 col-lg-4 col-sm-6">
                     <div class="row">
                        <div class="col-md-12">
                           <p class="text-dark text-uppercase"><?php echo _l('home_work_order_overview'); ?></p>
                           <hr class="mtop15" />
                        </div>
                        <?php 
                        // print_r($work_phases); exit();
                        foreach($work_phases as $w_phase){
                           $w_phase_percent_data = get_work_orders_percent_by_phase($w_phase['order_no']);
                        ?>
                           <div class="col-md-12 text-stats-wrapper">
                              <a href="#" class="text-<?php echo proposal_status_color_class($w_phase['order_no'],true); ?> mbot15 inline-block">
                                 <span class="_total bold"><?php echo $w_phase_percent_data['total_by_phase']; ?></span> <?php echo format_proposal_phase($w_phase,'',false); ?>
                              </a>
                           </div>
                           <div class="col-md-12 text-right progress-finance-status">
                              <?php echo $w_phase_percent_data['percent']; ?>%
                              <div class="progress no-margin progress-bar-mini">
                                 <div class="progress-bar progress-bar-<?php echo proposal_status_color_class($w_phase['order_no']); ?> no-percent-text not-dynamic" role="progressbar" aria-valuenow="<?php echo $w_phase_percent_data['percent']; ?>" aria-valuemin="0" aria-valuemax="100" style="width: 0%" data-percent="<?php echo $w_phase_percent_data['percent']; ?>">
                                 </div>
                              </div>
                           </div>
                        <?php }?>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if(has_permission('estimates','','view') || has_permission('estimates','','view_own') || has_permission('dashboard','','view') || (get_option('allow_staff_view_estimates_assigned') == 1 && staff_has_assigned_estimates())){ ?>
                  <div class="col-md-6 col-lg-4 col-sm-6">
                     <div class="row">
                        <div class="col-md-12 text-stats-wrapper">
                           <p class="text-dark text-uppercase"><?php echo _l('home_sale_order_overview'); ?></p>
                           <hr class="mtop15" />
                        </div>

                        <?php foreach($sale_phases as $s_phase){
                           $s_phase_percent_data = get_sale_orders_percent_by_phase($s_phase['order_no']);
                        ?>
                           <div class="col-md-12 text-stats-wrapper">
                              <a href="#" class="text-<?php echo proposal_status_color_class($s_phase['order_no'],true); ?> mbot15 inline-block">
                                 <span class="_total bold"><?php echo $s_phase_percent_data['total_by_phase']; ?></span> <?php echo format_proposal_phase($s_phase,'',false); ?>
                              </a>
                           </div>
                           <div class="col-md-12 text-right progress-finance-status">
                              <?php echo $s_phase_percent_data['percent']; ?>%
                              <div class="progress no-margin progress-bar-mini">
                                 <div class="progress-bar progress-bar-<?php echo proposal_status_color_class($s_phase['order_no']); ?> no-percent-text not-dynamic" role="progressbar" aria-valuenow="<?php echo $s_phase_percent_data['percent']; ?>" aria-valuemin="0" aria-valuemax="100" style="width: 0%" data-percent="<?php echo $s_phase_percent_data['percent']; ?>">
                                 </div>
                              </div>
                           </div>
                        <?php }?>
                     </div>
                  </div>
                  <?php } ?>
                  <?php if(has_permission('proposals','','view') || has_permission('proposals','','view_own') || has_permission('dashboard','','view') || get_option('allow_staff_view_proposals_assigned') == 1 && staff_has_assigned_proposals()){ ?>
                  <div class="col-md-12 col-sm-6 col-lg-4">
                     <div class="row">
                        <div class="col-md-12 text-stats-wrapper">
                           <p class="text-dark text-uppercase"><?php echo _l('home_quotation_overview'); ?></p>
                           <hr class="mtop15" />
                        </div>

                        <?php foreach($quotation_phases as $q_phase){
                           $q_phase_percent_data = get_proposals_percent_by_phase($q_phase['order_no']);
                        ?>
                           <div class="col-md-12 text-stats-wrapper">
                              <a href="#" class="text-<?php echo proposal_status_color_class($q_phase['order_no'],true); ?> mbot15 inline-block">
                                 <span class="_total bold"><?php echo $q_phase_percent_data['total_by_phase']; ?></span> <?php echo format_proposal_phase($q_phase,'',false); ?>
                              </a>
                           </div>
                           <div class="col-md-12 text-right progress-finance-status">
                              <?php echo $q_phase_percent_data['percent']; ?>%
                              <div class="progress no-margin progress-bar-mini">
                                 <div class="progress-bar progress-bar-<?php echo proposal_status_color_class($q_phase['order_no']); ?> no-percent-text not-dynamic" role="progressbar" aria-valuenow="<?php echo $q_phase_percent_data['percent']; ?>" aria-valuemin="0" aria-valuemax="100" style="width: 0%" data-percent="<?php echo $q_phase_percent_data['percent']; ?>">
                                 </div>
                              </div>
                           </div>
                        <?php }?>

                        <?php foreach($proposal_statuses as $status){
                           $url = admin_url('sale/quotation_list?status='.$status);
                           $percent_data = get_proposals_percent_by_status($status);
                           ?>
                           <div class="col-md-12 text-stats-wrapper">
                              <a href="<?php echo $url; ?>" class="text-<?php echo proposal_status_color_class($status,true); ?> mbot15 inline-block">
                                 <span class="_total bold"><?php echo $percent_data['total_by_status']; ?></span> <?php echo format_proposal_status($status,'',false); ?>
                              </a>
                           </div>
                           <div class="col-md-12 text-right progress-finance-status">
                              <?php echo $percent_data['percent']; ?>%
                              <div class="progress no-margin progress-bar-mini">
                                 <div class="progress-bar progress-bar-<?php echo proposal_status_color_class($status); ?> no-percent-text not-dynamic" role="progressbar" aria-valuenow="<?php echo $percent_data['percent']; ?>" aria-valuemin="0" aria-valuemax="100" style="width: 0%" data-percent="<?php echo $percent_data['percent']; ?>">
                                 </div>
                              </div>
                           </div>
                           <?php } ?>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                     <?php } ?>
                  </div>
               </div>
            </div>
         </div>
         <?php } ?>
      </div>

