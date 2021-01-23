<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
  <h3><?php echo _l('rel_wo_items')?></h3>
   <div class="row">
      <div class="col-md-4">
      </div>
   </div>
   <div class="table-responsive s_table">
      <table class="table estimate-items-table items wo-items table-main-estimate-edit has-calculations no-mtop">
         <thead>
            <tr>
              <th width="3%" align="center"><?php echo _l('dispatch'); ?></th>
              <th width="20%" align="center"><?php echo _l('product_name'); ?></th>
              <th width="9%" align="center"><?php echo _l('pack_capacity'); ?></th>
              <th width="9%" align="center"><?php echo _l('qty'); ?></th>
              <th width="9%" align="center"><?php echo _l('unit'); ?></th>
              <th width="9%" align="center"><?php echo _l('sending_qty'); ?></th>
              <th width="20%" align="center"><?php echo _l('warehouse'); ?></th>
              <th width="9%" align="center"><?php echo _l('volume_m3'); ?></th>
              <th width="12%" align="center"><?php echo _l('notes'); ?></th>
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

                $warehouse_option = '<option></option>';
                foreach ($item[1] as $key => $warehouse) {
                  if($warehouse->warehouse_id == $item['dispatch_warehouse']){
                    $warehouse_option.='<option value="'.$warehouse->warehouse_id.'" selected>'.$warehouse->warehouse.' : '.$warehouse->qty. '</option>';
                  }
                  else{
                    $warehouse_option.='<option value="'.$warehouse->warehouse_id.'">'.$warehouse->warehouse.' : '.$warehouse->qty. '</option>';
                  }
                  
                }
                 $table_row = '<tr class="sortable item">';
                 $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][itemid]', $item['id']);

                 if ($item['dispatch'] == 1) {
                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" checked  name="' . $items_indicator . '[' . $i . '][dispatch]" data-pre-check><label ></label></div>';
                  } else {
                      $table_row .= '<td><div class="checkbox" style="margin-top: 8px;padding-left: 50%"><input type="checkbox" name="' . $items_indicator . '[' . $i . '][dispatch]" data-pre-check ><label ></label></div>';
                  }

                 $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control" value="' . $item['product_name'] . '" disabled><input type="hidden" class="rel_product_id" name="' . $items_indicator . '[' . $i . '][rel_product_id]" value="' . $item['rel_product_id'] . '" ></td>';

                 $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="pack_capacity" data-fieldid="pack_capacity" name="'.$items_indicator.'['.$i.'][pack_capacity]" class="selectpicker form-control pack_capacity" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" disabled>'.$capacity_option.'</select></div></td>';

                 $table_row .= '<td><input type="number" data-quantity name="' . $items_indicator . '[' . $i . '][qty]" class="form-control" value="'.$item['qty'].'" disabled></td>';

                $table_row .= '<td> <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="'.$items_indicator.'['.$i.'][unit]" class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" disabled>'.$unit_option.'</select></div></td>';

                $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][sending_qty]" class="form-control sending_qty" value="'.$item['sending_qty'].'"></td>';
                $table_row .= '<td><div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="dispatch_warehouse" data-fieldid="dispatch_warehouse" name="' . $items_indicator . '[' . $i . '][dispatch_warehouse]"  class="selectpicker form-control" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98">'.$warehouse_option.'</select></td>';

                $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][volume_m3]" readonly class="form-control volume_m3" value="'.$item['volume_m3'].'"></td>';
                 $table_row .= '<td><input type="text" name="' . $items_indicator . '[' . $i . '][notes]" class="form-control" value="'.$item['notes'].'"></td>';
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
   <div class="checkbox" style="padding-left: 35px"><input type="checkbox" id="select_all" name="select_all" data-pre-check value=""><label ><?php echo _l('select_all')?></label>
</div>
