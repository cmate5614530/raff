  <?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel_s accounting-template invoice">
   <div class="panel-body">
      <div class="row">
        <div class="col-md-6">
              <?php 
                $selected = (isset($invoice) ? $invoice->wo_phase_id : 1);
                echo render_select('wo_phase_id',$work_order_phase,array('order_no','phase'),'work_order_phase',$selected);
                 ?>
        </div>
        <div class="col-md-6">
          <div class="f_client_id">
              <div class="form-group select-placeholder">
                <label for="clientid" class="control-label"><?php echo _l('invoice_select_customer'); ?></label>
                <select id="clientid" name="clientid" data-live-search="true" data-width="100%" class="ajax-search<?php if(isset($invoice) && empty($invoice->clientid)){echo ' customer-removed';} ?>" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
               <?php $selected = (isset($invoice) ? $invoice->clientid : '');
                 if($selected == ''){
                   $selected = (isset($customer_id) ? $customer_id: '');
                 }
                 if($selected != ''){
                    $rel_data = get_relation_data('customer',$selected);
                    $rel_val = get_relation_values($rel_data,'customer');
                    echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                 } ?>
                </select>
              </div>
            </div>
        </div>

        <div class="col-md-6">
            <?php 
              $value = (isset($invoice) ? $invoice->sum_volume_wo : '');
              echo render_input('sum_volume_wo',_l('sum_volume_m3'),$value,'number',array('readonly' => true)); ?>
        </div>

        <div class="col-md-6">
          <div class="form-group">
              <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('tags'); ?></label>
              <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($invoice) ? prep_tags_input(get_tags_in($invoice->id,'invoice')) : ''); ?>" data-role="tagsinput">
           </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
            <?php $createdUserNameValue = (isset($created_user_name) ? $created_user_name : "");?>
            <?php echo render_input('created_user','Created User',$createdUserNameValue,'text',array('placeholder'=>_l('created user'),'readonly'    => 'readonly')); ?>
        </div>
        <div class="col-md-6">
            <?php $updatedUserNameValue = (isset($updated_user_name) ? $updated_user_name : "");?>
            <?php echo render_input('updated_user','Last Updated User',$updatedUserNameValue,'text',array('placeholder'=>_l('updated user'),'readonly'    => 'readonly')); ?>
        </div>    
        <div class="col-md-6" style=" display: none;">
             <?php

                $currency_attr = array('disabled'=>true,'data-show-subtext'=>true);
                $currency_attr = apply_filters_deprecated('estimate_currency_disabled', [$currency_attr], '2.3.0', 'estimate_currency_attributes');
                foreach($currencies as $currency){
                  if($currency['isdefault'] == 1){
                    $currency_attr['data-base'] = $currency['id'];
                  }
                  if(isset($estimate)){
                    if($currency['id'] == $estimate->currency){
                      $selected = $currency['id'];
                    }
                  } else{
                   if($currency['isdefault'] == 1){
                    $selected = $currency['id'];
                  }
                }
                }
                $currency_attr = hooks()->apply_filters('estimate_currency_attributes',$currency_attr);
                ?>
             <?php echo render_select('currency', $currencies, array('id','name','symbol'), 'estimate_add_edit_currency', $selected, $currency_attr); ?>
          </div>
      </div>
   </div>
   <?php $this->load->view('admin/warehouses/dispatching_bay/rel_items/_add_edit_items'); ?>
   <?php //$this->load->view('admin/installation/rel_recipes/_add_edit_recipes'); ?>

   <div class="btn-bottom-toolbar text-right">
      <?php if(!isset($invoice)){ ?>
      <button class="btn-tr btn btn-default mleft10 text-right invoice-form-submit save-as-draft transaction-submit">
      <?php echo _l('save_as_draft'); ?>
      </button>
      <?php } ?>
    <div class="btn-group dropup">
      <button type="button" id="dispatch_submit" class="btn-tr btn btn-info dispatch-form-submit"><?php echo _l('save_and_transfer'); ?></button>
    </div>
  </div>
   </div>
</div>
