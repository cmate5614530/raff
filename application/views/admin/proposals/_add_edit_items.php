<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
   <div class="row">
      <div class="col-md-4">
          <?php $this->load->view('admin/products/product_recipe/select_package'); ?>
      </div>
   </div>
   <div class="table-responsive s_table">
      <table class="table estimate-items-table items table-main-estimate-edit has-calculations no-mtop">
         <thead>
            <tr>
              <th width="11%" align="center"><?php echo _l('product_name'); ?></th>
              <th width="11%" align="center"><?php echo _l('pack_capacity'); ?></th>
              <th width="11%" align="center"><?php echo _l('qty'); ?></th>
              <th width="11%" align="center"><?php echo _l('unit'); ?></th>
              <th width="11%" align="center"><?php echo _l('original_price'); ?></th>
              <th width="11%" align="center"><?php echo _l('sale_price'); ?></th>
              <th width="11%" align="center"><?php echo _l('volume_m3'); ?></th>
              <th width="4%" align="center"><?php echo _l('approval_need'); ?></th>
              <th width="11%" align="center"><?php echo _l('notes'); ?></th>
              <th width="8%" align="right"><?php echo _l('estimate_table_amount_heading'); ?></th>
              <th align="center"><i class="fa fa-cog"></i></th>
            </tr>
         </thead>
         <tbody>
            <tr class="main">
              <td>
                <input type="text" name="product_name" class="form-control">
                <input type="hidden" name="rel_product_id">
              </td>
              <td>
                <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                  <select data-fieldto="pack_capacity" data-fieldid="pack_capacity" name="pack_capacity" id="pack_capacity" class="selectpicker form-control pack_capacity" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98" onchange="volume_calc()">
                      <option value=""></option>
                    <!-- <?php foreach ($packlist as $key => $pack) {?>
                      <option value="<?php echo $pack['pack_capacity'];?>"><?php echo $pack['pack_capacity'];?></option>
                    <?php } ?> -->
                  </select>
                </div>
              </td>
              <td>
                <input type="number" name="qty" min="0" class="form-control" placeholder="<?php echo _l('item_quantity_placeholder'); ?>" onchange="volume_calc()" onkeyup="volume_calc()">
              </td>
              <td>
                <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;">
                    <select data-fieldto="unit" data-fieldid="unit" name="unit" id="unit" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98">
                        <option value=""></option>
                      <?php foreach ($units as $key => $unit) {?>
                        <option value="<?php echo $unit['unitid'];?>"><?php echo $unit['name'];?></option>
                      <?php } ?>
                    </select>
                </div>
              </td>
              <td>
                <input type="number" name="original_price" readonly class="form-control original_price" placeholder="<?php echo _l('original_price'); ?>">
              </td>
              <td>
                <input type="number" name="sale_price" class="form-control" placeholder="<?php echo _l('sale_price'); ?>">
              </td>
              <td>
                <input type="number" name="volume_m3" readonly class="form-control" placeholder="<?php echo _l('volume_m3'); ?>">
              </td>
              <td>
                <div class="checkbox" style="margin-top: 8px;padding-left: 50%">
                    <input type="checkbox" id="approval_need" name="approval_need" disabled>
                    <label for="approval_need"></label>
                  </div>
              </td>
              <td>
                <input type="text" name="notes" class="form-control" placeholder="<?php echo _l('notes'); ?>">
              </td>
              <td></td>
              <td>
                  <?php
                     $new_item = 'undefined';
                     if(isset($estimate)){
                       $new_item = true;
                     }
                     ?>
                  <button type="button" onclick="add_item_to_table_quote('undefined','undefined',<?php echo $new_item; ?>); return false;" class="btn pull-right btn-info"><i class="fa fa-check"></i></button>
              </td>
            </tr>
            <?php if (isset($estimate)) {
               $i               = 1;
               $items_indicator = 'newitems';
               if (isset($estimate)) {
                 $add_items       = $estimate->items;
                 $items_indicator = 'items';
               }
               // print_r($add_items); exit();
               foreach ($add_items as $item) {
                 $manual    = false;

                 $capacity_option = '<option></option>';
                 // $capacity_option = '';
                  foreach ($item[0] as $key => $pack) {
                      if($pack['pack_capacity'] == $item['pack_capacity'])
                          $capacity_option.='<option value="'.$pack['pack_capacity'].'" selected>'.$pack['pack_capacity'].'</option>';
                      else
                          $capacity_option.='<option value="'.$pack['pack_capacity'].'">'.$pack['pack_capacity'].'</option>';
                  }
                 // $capacity_option='<option value="'.$item[0].'" selected>'.$item[0].'</option>';

                $unit_option = '<option></option>';

                foreach ($units as $key => $unit) {
                    if($unit['unitid'] == $item['unit'])
                        $unit_option.='<option value="'.$unit['unitid'].'" selected>'.$unit['name'].'</option>';
                    else
                        $unit_option.='<option value="'.$unit['unitid'].'">'.$unit['name'].'</option>';
                }

                $amount = $item['qty'] * $item['sale_price'];
                $amount = app_format_number($amount);

                 $table_row = '<tr class="sortable item">';
                 // $table_row .= '<td class="dragger">';
               
                 $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][itemid]', $item['id']);

                 $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control" value="' . $item['product_name'] . '"><input type="hidden" class="rel_product_id" name="' . $items_indicator . '[' . $i . '][rel_product_id]" value="' . $item['rel_product_id'] . '" ></td>';

                 $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="pack_capacity" data-fieldid="pack_capacity" name="'.$items_indicator.'['.$i.'][pack_capacity]" class="selectpicker form-control pack_capacity" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" onchange="volume_calc_added(this);">'.$capacity_option.'</select></div></td>';

                 $table_row .= '<td><input type="number" data-quantity name="' . $items_indicator . '[' . $i . '][qty]" class="form-control" value="'.$item['qty'].'" onkeyup="calculate_total_quote();volume_calc_added(this);" onchange="calculate_total_quote();volume_calc_added(this);"></td>';

                 $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="'.$items_indicator.'['.$i.'][unit]" class="selectpicker form-control unit" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'.$unit_option.'</select></div></td>';

                 $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][original_price]" readonly class="form-control original_price" value="'.$item['original_price'].'"></td>';

                 $table_row .= '<td class="sale-price"><input type="number" name="' . $items_indicator . '[' . $i . '][sale_price]" class="form-control" value="'.$item['sale_price'].'" onkeyup="calculate_total_quote();quote_phase_change();" onchange="calculate_total_quote();quote_phase_change();"></td>';

                 $table_row .= '<td><input type="number"  name="' . $items_indicator . '[' . $i . '][volume_m3]" readonly class="form-control volume_m3" value="'.$item['volume_m3'].'"></td>';

                 if ($item['approval_need'] == 1) {

                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" checked  name="' . $items_indicator . '[' . $i . '][approval_need]" disabled><label ></label></div>';
                  } else {
                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" name="' . $items_indicator . '[' . $i . '][approval_need]" disabled><label ></label></div>';

                  }

                 $table_row .= '<td><input type="text" name="' . $items_indicator . '[' . $i . '][notes]" class="form-control" value="'.$item['notes'].'"></td>';
                 
                 $table_row .= '<td class="amount" align="right">' . $amount . '</td>';
                 
                 $table_row .= '<td><a href="#" class="btn btn-danger pull-left" onclick="delete_quote_item(this,' . $item['id'] . '); return false;"><i class="fa fa-times"></i></a></td>';
                 $table_row .= '</tr>';
                 echo $table_row;
                 $i++;
                 }
               }
               ?>
         </tbody>
      </table>
   </div>
   <div class="col-md-8 col-md-offset-4">
      <table class="table text-right">
         <tbody>
            <tr id="subtotal">
               <td><span class="bold"><?php echo _l('estimate_subtotal'); ?> :</span>
               </td>
               <td class="subtotal">
               </td>
            </tr>
            <tr id="sum_volume_m3">
               <td><span class="bold"><?php echo _l('sum_volume_m3'); ?> :</span>
               </td>
               <td class="sum_volume_m3">
               </td>
            </tr>
            <tr id="discount_area">
               <td>
                  <div class="row">
                     <div class="col-md-7">
                        <span class="bold"><?php echo _l('estimate_discount'); ?></span>
                     </div>
                     <div class="col-md-5">
                        <div class="input-group" id="discount-total">

                           <input type="number" value="<?php echo (isset($estimate) ? $estimate->discount_percent : 0); ?>" class="form-control  pull-left input-discount-percent<?php if(isset($estimate) && !is_sale_discount($estimate,'percent') && is_sale_discount_applied($estimate)){echo ' hide';} ?>" min="0" max="100" name="discount_percent" onchange="quote_phase_change_by_discount(this)" onkeyup="quote_phase_change_by_discount(this)">

                           <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing'); ?>" value="<?php echo (isset($estimate) ? $estimate->discount_total : 0); ?>" class="form-control  pull-left input-discount-fixed<?php if(!isset($estimate) || (isset($estimate) && !is_sale_discount($estimate,'fixed'))){echo ' hide';} ?>" min="0" name="discount_total" onchange="quote_phase_change_by_discount(this)" onkeyup="quote_phase_change_by_discount(this)">

                           <div class="input-group-addon">
                              <div class="dropdown">
                                 <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                 <span class="discount-total-type-selected">
                                  <?php if(!isset($estimate) || isset($estimate) && (is_sale_discount($estimate,'percent') || !is_sale_discount_applied($estimate))) {
                                    echo '%';
                                    } else {
                                    echo _l('discount_fixed_amount');
                                    }
                                    ?>
                                 </span>
                                 <span class="caret"></span>
                                 </a>
                                 <ul class="dropdown-menu" id="discount-total-type-dropdown" aria-labelledby="dropdown_menu_tax_total_type">
                                   <li>
                                    <a href="#" class="discount-total-type discount-type-percent<?php if(!isset($estimate) || (isset($estimate) && is_sale_discount($estimate,'percent')) || (isset($estimate) && !is_sale_discount_applied($estimate))){echo ' selected';} ?>">%</a>
                                  </li>
                                  <li>
                                    <a href="#" class="discount-total-type discount-type-fixed<?php if(isset($estimate) && is_sale_discount($estimate,'fixed')){echo ' selected';} ?>">
                                      <?php echo _l('discount_fixed_amount'); ?>
                                    </a>
                                  </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </td>
               <td class="discount-total"></td>
            </tr>
            <!-- <tr>
               <td>
                  <div class="row">
                     <div class="col-md-7">
                        <span class="bold"><?php echo _l('estimate_adjustment'); ?></span>
                     </div>
                     <div class="col-md-5">
                        <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing'); ?>" value="<?php if(isset($estimate)){echo $estimate->adjustment; } else { echo 0; } ?>" class="form-control pull-left" name="adjustment">
                     </div>
                  </div>
               </td>
               <td class="adjustment"></td>
            </tr> -->
            <tr>
               <td><span class="bold"><?php echo _l('estimate_total'); ?> :</span>
               </td>
               <td class="total">
               </td>
            </tr>
         </tbody>
      </table>
   </div>
   <div id="removed-items"></div>
</div>
