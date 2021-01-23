<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
  <h3><?php echo _l('rel_wo_items')?></h3>
   <div class="table-responsive s_table">
      <table class="table estimate-items-table items wo-items table-main-estimate-edit has-calculations no-mtop">
         <thead>
            <tr>
              <th width="12%" align="center"><?php echo _l('product_code'); ?></th>
              <th width="12%" align="center"><?php echo _l('product_name'); ?></th>
              <th width="12%" align="center"><?php echo _l('stock_level'); ?></th>
              <th width="12%" align="center"><?php echo _l('pack_capacity'); ?></th>
              <th width="12%" align="center"><?php echo _l('qty'); ?></th>
              <th width="12%" align="center"><?php echo _l('unit'); ?></th>
              <th width="12%" align="center"><?php echo _l('volume_m3'); ?></th>
              <th width="4%" align="center"><?php echo _l('approval_need'); ?></th>
              <th width="12%" align="center"><?php echo _l('notes'); ?></th>
              <th width="10%" align="right"><?php echo _l('scheduled'); ?></th>
            </tr>
         </thead>
         <tbody>
            <?php 
              if($invoice->wo_item_edited == 1) $items = $rel_wo_items;
               else $items = $inv_items;

              if (isset($items)) {
               $i               = 1;
               $items_indicator = 'wo_items[newitems]';
               if (isset($items)) {
                 $items_indicator = 'wo_items[items]';
               }

               foreach ($items as $item) {
                  $manual    = false;
                  $capacity_option='<option value="'.$item['pack_capacity'].'">'.$item['pack_capacity'].'</option>';

                  $unit_option = '<option></option>';

                  foreach ($units as $key => $unit) {
                      if($unit['unitid'] == $item['unit'])
                          $unit_option.='<option value="'.$unit['unitid'].'" selected>'.$unit['name'].'</option>';
                      else
                          $unit_option.='<option value="'.$unit['unitid'].'">'.$unit['name'].'</option>';
                  }

                 $table_row = '<tr class="sortable item">';
                 $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][itemid]', $item['id']);
                 $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_code]" class="form-control product_code" value="' . $item['product_code'] . '" disabled></td>';

                 $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control" value="' . $item['product_name'] . '" disabled><input type="hidden" class="rel_product_id" name="' . $items_indicator . '[' . $i . '][rel_product_id]" value="' . $item['rel_product_id'] . '" ></td>';
                 $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][stock_level]" class="form-control stock_level" value="' . $item[0]->qty . '" disabled></td>';

                 $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="pack_capacity" data-fieldid="pack_capacity" name="'.$items_indicator.'['.$i.'][pack_capacity]" class="selectpicker form-control pack_capacity" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" disabled>'.$capacity_option.'</select></div></td>';

                 $table_row .= '<td><input type="number" data-quantity name="' . $items_indicator . '[' . $i . '][qty]" class="form-control" value="'.$item['qty'].'" disabled onkeyup="calculate_total_quote();" onchange="calculate_total_quote();"></td>';

                 $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="'.$items_indicator.'['.$i.'][unit]" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" disabled>'.$unit_option.'</select></div></td>';

                 $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][volume_m3]" readonly class="form-control volume_m3" value="'.$item['volume_m3'].'"></td>';

                 if ($item['approval_need'] == 1) {

                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" checked  name="' . $items_indicator . '[' . $i . '][approval_need]" disabled><label ></label></div>';
                  } else {
                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" name="' . $items_indicator . '[' . $i . '][approval_need]" disabled><label ></label></div>';

                  }

                 $table_row .= '<td><input type="text" name="' . $items_indicator . '[' . $i . '][notes]" class="form-control" value="'.$item['notes'].'" disabled></td>';
                 
                if($item['scheduled'] == 1)
                    $table_row .= '<td><a href="#" class="btn btn-success pull-right" disabled onclick="return false;"><i class="fa fa-check-circle-o"></i></a></td>';
                else
                    $table_row .= '<td><a href="#" class="btn btn-warning pull-right" disabled onclick="return false;"><i class="fa fa-times-circle"></i></a></td>';

                 $table_row .= '</tr>';
                 echo $table_row;
                 $i++;
                 }
               }
               ?>
         </tbody>
      </table>
   </div>
   <div id="wo_removed-items"></div>
</div>
