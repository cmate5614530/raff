<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
   <div class="content accounting-template proposal">
      <div class="row">
         <?php
            if(isset($proposal)){
             echo form_hidden('isedit',$proposal->id);
            }
            $rel_type = '';
            $rel_id = '';
            if(isset($proposal) || ($this->input->get('rel_id') && $this->input->get('rel_type'))){
             if($this->input->get('rel_id')){
               $rel_id = $this->input->get('rel_id');
               $rel_type = $this->input->get('rel_type');
             } else {
               $rel_id = $proposal->rel_id;
               $rel_type = $proposal->rel_type;
             }
            }
            ?>
         <?php echo form_open($this->uri->uri_string(),array('id'=>'proposal-form','class'=>'_transaction_form proposal-form')); ?>
         <div class="col-md-12">
            <div class="panel_s">
               <div class="panel-body">
                  <div class="row">
                     <?php if(isset($proposal)){ ?>
                     <div class="col-md-12">
                        <?php echo format_proposal_status($proposal->status); ?>
                     </div>
                     <div class="clearfix"></div>
                     <hr />
                     <?php } ?>
                     <div class="col-md-6 border-right">
                        <?php $value = (isset($proposal) ? $proposal->subject : ''); ?>
                        <?php $attrs = (isset($proposal) ? array() : array('autofocus'=>true)); ?>
                        <?php echo render_input('subject','proposal_subject',$value,'text',$attrs); ?>

                        <div class="form-group select-placeholder">
                           <label class="control-label"><?php echo _l('quote_phase'); ?></label>
                           <select name="quote_phase" id="quote_phase" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" disabled>
                              <option></option>
                              <?php foreach($quote_phases as $quote_phase){?>

                                  <option value="<?= $quote_phase['order_no'];?>" <?php if((isset($proposal) &&  $proposal->quote_phase_id == $quote_phase['order_no'])){echo 'selected';} ?>><?= $quote_phase['phase']; ?></option>

                              <?php }?>
                              
                           </select>
                        </div>
                        <input type="hidden" name="quote_phase_id" id="quote_phase_id" value="">

                        <div class="form-group select-placeholder">
                           <label for="rel_type" class="control-label"><?php echo _l('proposal_related'); ?></label>
                           <select name="rel_type" id="rel_type" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                              <option value=""></option>
                             <!--  <option value="lead" <?php if((isset($proposal) && $proposal->rel_type == 'lead') || $this->input->get('rel_type')){if($rel_type == 'lead'){echo 'selected';}} ?>><?php echo _l('proposal_for_lead'); ?></option> -->
                              <option value="customer" <?php if((isset($proposal) &&  $proposal->rel_type == 'customer') || $this->input->get('rel_type')){if($rel_type == 'customer'){echo 'selected';}} ?>><?php echo _l('proposal_for_customer'); ?></option>
                           </select>
                        </div>
                        <div class="form-group select-placeholder<?php if($rel_id == ''){echo ' hide';} ?> " id="rel_id_wrapper">
                           <label for="rel_id"><span class="rel_id_label"></span></label>
                           <div id="rel_id_select">
                              <select name="rel_id" id="rel_id" class="ajax-search" data-width="100%" data-live-search="true" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                              <?php if($rel_id != '' && $rel_type != ''){
                                 $rel_data = get_relation_data($rel_type,$rel_id);
                                 $rel_val = get_relation_values($rel_data,$rel_type);
                                    echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                                 } ?>
                              </select>
                           </div>
                        </div>

                        <div class="form-group select-placeholder">
                           <label class="control-label"><?php echo _l('pricing_category'); ?></label>
                           <select name="pricing_category_id" id="pricing_category" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" required>
                              <option></option>
                              <?php 
                              foreach($pricing_categories as $pricing_category){
                                ?>
                                  <option value="<?= $pricing_category['order_no'];?>" <?php if((isset($proposal) &&  $proposal->pricing_category_id == $pricing_category['order_no'])){echo 'selected';} ?>><?= $pricing_category['name']; ?></option>

                              <?php }?>
                              
                           </select>
                        </div>
                         <?php
                           $selected = (isset($proposal) ? $proposal->currency : '');
                           $currency_attr = array('data-show-subtext'=>true);
                           if($rel_type == 'customer'){
                              $currency_attr['disabled'] = true;
                           }
                           // foreach($currencies as $currency){
                           //  if($currency['isdefault'] == 1){
                           //    $currency_attr['data-base'] = $currency['id'];
                           //  }
                           //  if(isset($proposal)){
                           //    if($currency['id'] == $proposal->currency){
                           //      $selected = $currency['id'];
                           //    }
                           //    if($proposal->rel_type == 'customer'){
                           //      // $currency_attr['disabled'] = true;
                           //    }
                           //  } else {
                           //    if($rel_type == 'customer'){
                                // $customer_currency = $this->clients_model->get_customer_default_currency($rel_id);
                           //      if($customer_currency != 0){
                           //        $selected = $customer_currency;
                           //      } else {
                           //        if($currency['isdefault'] == 1){
                           //          $selected = $currency['id'];
                           //        }
                           //      }
                           //      // $currency_attr['disabled'] = true;
                           //    } else {
                           //     if($currency['isdefault'] == 1){
                           //      $selected = $currency['id'];
                           //    }
                           //  }
                           // }
                           // }
                           $currency_attr = apply_filters_deprecated('proposal_currency_disabled', [$currency_attr], '2.3.0', 'proposal_currency_attributes');
                           $currency_attr = hooks()->apply_filters('proposal_currency_attributes', $currency_attr);
                           ?>
                       <div class="row">
                          <div class="col-md-6">
                            <?php
                            echo render_select('currency', $currencies, array('id','name','symbol'), 'proposal_currency', $selected,$currency_attr);
                            ?>
                           </div>
                           <div class="col-md-6">
                              <?php 
                                $value = (isset($proposal) ? $proposal->shipping_type : '');
                                echo render_input('shipping_type','shipping_type',$value,'text', array('required'=>true)); ?>
                           </div>
                       </div>
                        <?php $fc_rel_id = (isset($proposal) ? $proposal->id : false); ?>
                        <?php echo render_custom_fields('proposal',$fc_rel_id); ?>
                         <div class="form-group no-mbot">
                           <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('tags'); ?></label>
                           <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($proposal) ? prep_tags_input(get_tags_in($proposal->id,'proposal')) : ''); ?>" data-role="tagsinput">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="form-group select-placeholder">
                                 <label for="status" class="control-label"><?php echo _l('proposal_status'); ?></label>
                                 <?php
                                    $disabled = '';
                                    if(isset($proposal)){
                                     if($proposal->estimate_id != NULL || $proposal->invoice_id != NULL){
                                       $disabled = 'disabled';
                                     }
                                    }
                                    ?>
                                 <select name="status" class="selectpicker" data-width="100%" <?php echo $disabled; ?> data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <?php foreach($statuses as $status){ ?>
                                    <option value="<?php echo $status; ?>" <?php if((isset($proposal) && $proposal->status == $status) || (!isset($proposal) && $status == 0)){echo 'selected';} ?>><?php echo format_proposal_status($status,'',false); ?></option>
                                    <?php } ?>
                                 </select>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <?php
                                 $i = 0;
                                 $selected = '';
                                 foreach($staff as $member){
                                  if(isset($proposal)){
                                    if($proposal->assigned == $member['staffid']) {
                                      $selected = $member['staffid'];
                                    }
                                  }
                                  $i++;
                                 }
                                 echo render_select('assigned',$staff,array('staffid',array('firstname','lastname')),'proposal_assigned',$selected);
                                 ?>
                           </div>
                        </div>
                        <?php $value = (isset($proposal) ? $proposal->proposal_to : ''); ?>
                        <?php echo render_input('proposal_to','proposal_to',$value); ?>
                        <?php $value = (isset($proposal) ? $proposal->address : ''); ?>
                        <?php echo render_textarea('address','proposal_address',$value); ?>
                        <div class="row">
                           <div class="col-md-6">
                              <?php $value = (isset($proposal) ? $proposal->city : ''); ?>
                              <?php echo render_input('city','billing_city',$value); ?>
                           </div>
                           <div class="col-md-6">
                              <?php $value = (isset($proposal) ? $proposal->state : ''); ?>
                              <?php echo render_input('state','billing_state',$value); ?>
                           </div>
                           <div class="col-md-6">
                              <?php $countries = get_all_countries(); ?>
                              <?php $selected = (isset($proposal) ? $proposal->country : ''); ?>
                              <?php echo render_select('country',$countries,array('country_id',array('short_name'),'iso2'),'billing_country',$selected); ?>
                           </div>
                           <div class="col-md-6">
                              <?php $value = (isset($proposal) ? $proposal->zip : ''); ?>
                              <?php echo render_input('zip','billing_zip',$value); ?>
                           </div>
                           <div class="col-md-6">
                              <?php $value = (isset($proposal) ? $proposal->email : ''); ?>
                              <?php echo render_input('email','proposal_email',$value); ?>
                           </div>
                           <div class="col-md-6">
                              <?php $value = (isset($proposal) ? $proposal->phone : ''); ?>
                              <?php echo render_input('phone','proposal_phone',$value); ?>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="btn-bottom-toolbar bottom-transaction text-right">
                  <p class="no-mbot pull-left mtop5 btn-toolbar-notice"><?php echo _l('include_proposal_items_merge_field_help','<b>{proposal_items}</b>'); ?></p>
                    <button type="button" class="btn btn-info mleft10 proposal-form-submit save-and-send transaction-submit">
                        <?php echo _l('save_and_send'); ?>
                    </button>
                    <button class="btn btn-info mleft5 proposal-form-submit transaction-submit" type="button">
                      <?php echo _l('submit'); ?>
                    </button>
               </div>
               </div>
            </div>
         </div>
         <div class="col-md-12">
            <div class="panel_s">
               <?php $this->load->view('admin/proposals/_add_edit_items'); ?>
            </div>
         </div>
         <?php echo form_close(); ?>
         <?php $this->load->view('admin/invoice_items/item'); ?>
      </div>
      <div class="btn-bottom-pusher"></div>
   </div>
</div>
<?php init_tail(); ?>
<script>
   var _rel_id = $('#rel_id'),
   _rel_type = $('#rel_type'),
   _rel_id_wrapper = $('#rel_id_wrapper'),
   data = {};

   $(function(){
    init_currency();
    // Maybe items ajax search
    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
    validate_proposal_form();
    $('body').on('change','#rel_id', function() {
     if($(this).val() != ''){
      $.get(admin_url + 'proposals/get_relation_data_values/' + $(this).val() + '/' + _rel_type.val(), function(response) {
        $('input[name="proposal_to"]').val(response.to);
        $('textarea[name="address"]').val(response.address);
        $('input[name="email"]').val(response.email);
        $('input[name="phone"]').val(response.phone);
        $('input[name="city"]').val(response.city);
        $('input[name="state"]').val(response.state);
        $('input[name="zip"]').val(response.zip);
        $('select[name="country"]').selectpicker('val',response.country);
        var currency_selector = $('#currency');
        if(_rel_type.val() == 'customer'){
          if(typeof(currency_selector.attr('multi-currency')) == 'undefined'){
            currency_selector.attr('disabled',true);
          }

         } else {
           currency_selector.attr('disabled',false);
        }
        var proposal_to_wrapper = $('[app-field-wrapper="proposal_to"]');
        if(response.is_using_company == false && !empty(response.company)) {
          proposal_to_wrapper.find('#use_company_name').remove();
          proposal_to_wrapper.find('#use_company_help').remove();
          proposal_to_wrapper.append('<div id="use_company_help" class="hide">'+response.company+'</div>');
          proposal_to_wrapper.find('label')
          .prepend("<a href=\"#\" id=\"use_company_name\" data-toggle=\"tooltip\" data-title=\"<?php echo _l('use_company_name_instead'); ?>\" onclick='document.getElementById(\"proposal_to\").value = document.getElementById(\"use_company_help\").innerHTML.trim(); this.remove();'><i class=\"fa fa-building-o\"></i></a> ");
        } else {
          proposal_to_wrapper.find('label #use_company_name').remove();
          proposal_to_wrapper.find('label #use_company_help').remove();
        }
       /* Check if customer default currency is passed */
       if(response.currency){
         currency_selector.selectpicker('val',response.currency);
       } else {
        /* Revert back to base currency */
        currency_selector.selectpicker('val',currency_selector.data('base'));
      }
      currency_selector.selectpicker('refresh');
      currency_selector.change();
    }, 'json');
    }
   });
    $('.rel_id_label').html(_rel_type.find('option:selected').text());
    _rel_type.on('change', function() {
      var clonedSelect = _rel_id.html('').clone();
      _rel_id.selectpicker('destroy').remove();
      _rel_id = clonedSelect;
      $('#rel_id_select').append(clonedSelect);
      proposal_rel_id_select();
      if($(this).val() != ''){
        _rel_id_wrapper.removeClass('hide');
      } else {
        _rel_id_wrapper.addClass('hide');
      }
      $('.rel_id_label').html(_rel_type.find('option:selected').text());
    });
    proposal_rel_id_select();
    <?php if(!isset($proposal) && $rel_id != ''){ ?>
      _rel_id.change();
      <?php } ?>
    });
   function proposal_rel_id_select(){
      var serverData = {};
      serverData.rel_id = _rel_id.val();
      data.type = _rel_type.val();
      init_ajax_search(_rel_type.val(),_rel_id,serverData);
   }
   function validate_proposal_form(){
      appValidateForm($('#proposal-form'), {
        subject : 'required',
        proposal_to : 'required',
        rel_type: 'required',
        rel_id : 'required',
        date : 'required',
        email: {
         email:true,
         required:true
       },
       currency : 'required',
     });
   }

/*Quote Item part*/

$("body").on('change', 'select[name="item_select"]', function () {
    var itemid = $(this).selectpicker('val');
    if (itemid != '') {
        add_item_to_preview_quote(itemid);
    }
});

$('input[name="discount_percent"]').change(function(){
  calculate_total_quote()
})

$('input[name="discount_total"]').change(function(){
  calculate_total_quote()
})

$(document).ready(function(){
  calculate_total_quote();
  quote_phase_change();
  quote_phase_change_by_discount();
  unit_disable();
})

$('#pricing_category').change(function(){
  var pricing_category_no = $('#pricing_category').val();
  rows = $('.table.has-calculations tbody tr.item')
  if(pricing_category_no)
  {
      requestGetJSON('products/get_price_category_calc/' + pricing_category_no).done(function (response) {
        $('select[name="currency"]').selectpicker('val', response.default_currency)
        init_currency();
        if(response.calc_value1)
            var value1 = response.calc_value1;
        else
            var value1 = 1;

        if(response.calc_value2)
            var value2 = response.calc_value2;
        else
            var value2 = 1;

        let data = {
            <?php echo $this->security->get_csrf_token_name(); ?> : "<?php echo $this->security->get_csrf_hash(); ?>",value1: value1, value2:value2
        }
        $.post(admin_url+'warehouses/update_original_price', data).done(function(response) {
          $.each(rows, function() {
              var rel_product_id = $(this).find('.rel_product_id').val();
              row = $(this);
              JSON.parse(response).forEach(e => {
                if(e.id == rel_product_id)
                {
                  $(this).find('.original_price').val(e.original_price)
                }
              })
          });
        });
      });
  } else {
        let data = {
            <?php echo $this->security->get_csrf_token_name(); ?> : "<?php echo $this->security->get_csrf_hash(); ?>",value1: 1, value2:1
        }

        $.post(admin_url+'warehouses/update_original_price', data).done(function(response) {
             $.each(rows, function() {
              var rel_product_id = $(this).find('.rel_product_id').val();
              row = $(this);
              
              JSON.parse(response).forEach(e => {
                if(e.id == rel_product_id)
                {
                  $(this).find('.original_price').val(e.original_price)
                }
              })
              
          });
        });
      init_currency();
  }
})

function quote_phase_change()
{
  var rows = $('.table.has-calculations tbody tr.item');
  var flag = 0;
  $.each(rows, function() {
    var original_price = $(this).find('.original_price').val();
    var sale_price = $(this).find('.sale-price').children().val();

    if(Number(original_price)> Number(sale_price))
    {
      flag = 1;
      return false;
    }
  })
  if(flag == 1)
  {
    $('select[name="quote_phase"]').selectpicker('val',1);
    $('select[name="quote_phase"]').prop('disabled', true);
    $('#quote_phase_id').val($('select[name="quote_phase"]').val())
  } else {
    $('select[name="quote_phase"]').selectpicker('val',2);
    $('select[name="quote_phase"]').prop('disabled', true);
    $('#quote_phase_id').val($('select[name="quote_phase"]').val())
  }
}

function quote_phase_change_by_discount(row){
  if($(row).val() > 0){
    $('select[name="quote_phase"]').selectpicker('val',1);
    $('select[name="quote_phase"]').prop('disabled', true);
    $('#quote_phase_id').val($('select[name="quote_phase"]').val())
  } else {
    $('select[name="quote_phase"]').prop('disabled', true);
    $('#quote_phase_id').val($('select[name="quote_phase"]').val())
  }

}

$('select[name="quote_phase"]').change(function(){
  $('#quote_phase_id').val($('select[name="quote_phase"]').val())
})

function volume_calc(){
  var pack_capacity = $('#pack_capacity').val();
  requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
    var volume = response.volume;
    var qty = $('input[name="qty"]').val();
    var cal_volume = Number(volume)*(Number(qty)/Number(pack_capacity));
    $('input[name="volume_m3"]').val(cal_volume);
    calculate_total_quote();
  });

}

function volume_calc_added(row){
  var pack_capacity = $(row).parents('tr').find('.selectpicker.pack_capacity').val()
  var currentV = $(row).parents('tr').children()[7].firstChild;
  var qty = $(row).parents('tr').find('[data-quantity]').val();
  requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
    currentV.value = Number(response.volume)*Number(qty)/Number(pack_capacity);
    calculate_total_quote();
  });
}

</script>
</body>
</html>
