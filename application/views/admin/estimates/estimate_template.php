<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel_s accounting-template estimate">
   <div class="panel-body">
      <div class="row">
          <div class="col-md-6">
              <?php 
                $selected = (isset($estimate) ? $estimate->sale_phase_id : '');
                echo render_select('sale_phase_id',$sale_phase,array('order_no','phase'),'sale_phase',$selected);
                 ?>
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

          <div class="col-md-6">
            <div class="f_client_id">
             <div class="form-group select-placeholder">
                <label for="clientid" class="control-label"><?php echo _l('estimate_select_customer'); ?></label>
                <select id="clientid" name="clientid" data-live-search="true" data-width="100%" class="ajax-search<?php if(isset($estimate) && empty($estimate->clientid)){echo ' customer-removed';} ?>" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
               <?php $selected = (isset($estimate) ? $estimate->clientid : '');
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
        </div>

        <div class="row">
          <div class="col-md-6">
              <?php 
                $value = (isset($estimate) ? $estimate->general_notes : '');
                echo render_input('general_notes',_l('general_notes'),$value,'text',array('placeholder'=>_l('general_notes'))); ?>
          </div>
          <div class="col-md-6">
              <?php
                $value = (isset($estimate) ? $estimate->shipping_type : ''); 
                echo render_input('shipping_type',_l('shipping_type'),$value,'text',array('readonly' => true)); ?>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
              <?php $value = (isset($estimate) ? _d($estimate->req_shipping_date) : _d(date('Y-m-d h:i:s'))) ?>
              <?php echo render_date_input('req_shipping_date',_l('req_shipping_date'),$value); ?>
          </div>
          <div class="col-md-6">
              <?php 
                $value = (isset($estimate) ? $estimate->total_price : ''); 
                echo render_input('total_price',_l('total_price'),$value,'text',array('placeholder'=>_l(''),'readonly'=>'readonly')); ?>
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
      </div>

   </div>
   <?php $this->load->view('admin/estimates/_add_edit_items0'); ?>
   <div class="row">
      <div class="col-md-12 mtop15">
          <div class="btn-bottom-toolbar text-right">
            <!-- <button type="button" class="btn-tr btn btn-info mleft10 estimate-form-submit save-and-send transaction-submit">
            <?php echo _l('save_and_send'); ?>
            </button> -->
            <button type="button" class="btn-tr btn btn-info mleft10 estimate-form-submit transaction-submit">
            <?php echo _l('submit'); ?>
            </button>
          </div>
          <div class="btn-bottom-pusher"></div>
      </div>
   </div>
</div>
