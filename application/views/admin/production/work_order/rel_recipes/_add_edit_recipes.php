<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
  <h3><?php echo _l('rel_plan_recipes')?></h3>
   <div class="row">
      <div class="col-md-4">
      </div>
   </div>
   <div class="table-responsive recipe" id="item-section">
        <table class="table estimate-items-table items recipe-items table-main-estimate-edit has-calculations no-mtop">
            <thead>
            <tr>
                <th width="8%"><?php echo _l('rel_wo_item'); ?></th>
                <th width="8%"><?php echo _l('product_code'); ?></th>
                <th width="8%"><?php echo _l('product_name'); ?></th>
                <th width="8%" align="right"><?php echo _l('order'); ?></th>
                <th width="12%"><?php echo _l('arrival_date'); ?></th>
                <th width="8%"><?php echo _l('stock_level'); ?></th>
                <th width="8%"><?php echo _l('used_qty'); ?></th>
                <th width="8%"><?php echo _l('rate_of_waste'); ?></th>
                <th width="8%"><?php echo _l('mould_id'); ?></th>
                <th width="8%"><?php echo _l('mould_cavity'); ?></th>
                <th width="8%"><?php echo _l('cycle_time'); ?></th>
                <th width="8%" align="right"><?php echo _l('scheduled'); ?></th>
            </tr>
            </thead>
            <tbody>
                <?php if (isset($plan_recipes)) {
                    $items_indicator = 'plan_items';
                    $i               = 0;
                    foreach ($plan_recipes as $item) {
                        $manual    = false;
                        
                        $option = '<option></option>';
                        foreach ($moulds as $key => $mould) {
                            if($mould['id'] == $item['mould'])
                                $option.='<option value="'.$mould['id'].'" selected>'.$mould['mould_name'].'</option>';
                            else
                                $option.='<option value="'.$mould['id'].'">'.$mould['mould_name'].'</option>';
                        }

                        $table_row = '<tr class="sortable item">';

                        $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][item_id]', $item['id']);

                        $table_row .= '<td><span style="color: green;font-weight: 600;font-size: 14px">'.$item['wo_product'].'</span></td>';

                        $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_code]" class="form-control" value="' . $item['product_code'] . '" disabled></td>';

                        $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control product_name" value="' . $item['product_name'] . '" disabled><input type="hidden" name="' . $items_indicator . '[' . $i . '][ingredient_item_id]" value="' . $item['ingredient_item_id'] . '" ></td>';

                        if($item[0] > $item['used_qty'])
                            $table_row .= '<td><a href="#" class="btn btn-success pull-right" disabled onclick="return false;"><i class="fa fa-check-circle-o"></i></a></td>';
                        else {
                            if($item['quick_purchased'] == 1)
                                $table_row .= '<td><a href="#" class="btn btn-info pull-right" disabled onclick="return false;"><i class="fa fa-times-circle"></i></a></td>';
                            else
                                $table_row .= '<td><a href="#" class="btn btn-warning pull-right" disabled onclick="return false;"><i class="fa fa-times-circle"></i></a></td>';
                        }
                        $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][arrival_date]" class="form-control" value="' . $item['arrival_date'] . '" readonly></td>';

                        $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][stock_level]" class="form-control" value="' . $item[0] . '" disabled></td>';

                        $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][used_qty]" class="form-control material qty" value="'.$item['used_qty'].'" disabled></td>';

                        $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][rate_of_waste]" class="form-control material" value="'.$item['rate_of_waste'].'" disabled></td>';

                        $table_row .= '<td>
                            <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="mould" data-fieldid="mould" name="'.$items_indicator.'['.$i.'][mould]" class="selectpicker form-control mouldid" data-width="100%" data-none-selected-text="None" data-live-search="true" tabindex="-98" disabled>'.$option.'</select></div>
                        </td>';

                        $table_row .= '<td><input type="text" readonly name="'.$items_indicator.'['.$i.'][mould_cavity]" class="form-control mould_cavity" value="'.$item['mould_cavity'].'"></td>';

                        $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][cycle_time]" class="form-control cycle_time" value="'.$item['cycle_time'].'" disabled></td>';

                        if($item['scheduled'] == 1)
                            $table_row .= '<td><a href="#" class="btn btn-success pull-right schedule" disabled onclick="return false;"><i class="fa fa-check-circle-o"></i></a></td>';
                        else
                            $table_row .= '<td><a href="#" class="btn btn-warning pull-right schedule" disabled onclick="return false;"><i class="fa fa-times-circle"></i></a></td>';

                        $table_row .= '</tr>';
                        echo $table_row;
                        $i++;
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
  
   <div id="recipe_removed-items"></div>
</div>
