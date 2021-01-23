<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="panel-body mtop10">
    <div class="row">
        <div class="col-md-4">
            <?php $this->load->view('admin/purchases/purchase_order/purchase_item_select'); ?>
        </div>
        <div class="col-md-8 text-right show_quantity_as_wrapper">
        </div>
    </div>
    <div class="table-responsive s_table">
        <table class="table estimate-items-table items table-main-estimate-edit has-calculations no-mtop">
            <thead>
            <tr>
                <th></th>
                <th width="10%" align="center"><?php echo _l('product_name'); ?></th>
                <th width="30%" align="center"><?php echo _l('description'); ?></th>
                <th width="10%" align="center"><?php echo _l('ordered_qty'); ?></th>
                <th width="10%"  align="center"><?php echo _l('received_qty')?></th>
                <th width="10%"  align="center"><?php echo _l('unit') ?></th>
                <th width="10%"  align="center"><?php echo _l('volume_m3') ?></th>
                <th width="10%"  align="center"><?php echo _l('notes') ?></th>
                <th align="center"><i class="fa fa-cog"></i></th>
            </tr>
            </thead>
            <tbody>
            <tr class="main">
                <td></td>
                <td>
                    <input type="hidden" name="item_id">
                    <input type="text" name="product_name" class="form-control" placeholder="<?php echo _l('product_name'); ?>">
                </td>

                <td>
                    <textarea name="description" class="form-control" style="height: 36px" rows="2" placeholder="<?php echo _l('description'); ?>"></textarea>
                </td>

                <td>
                    <input type="number" name="ordered_qty" class="form-control" placeholder="<?php echo _l('ordered_qty'); ?>">
                </td>

                <td>
                    <input type="number" name="received_qty" readonly class="form-control" placeholder="<?php echo _l('received_qty'); ?>">
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
                    <input type="hidden" name="product_id" class="form-control" >
                </td>

                <td>
                    <input type="number" name="volume" class="form-control" placeholder="<?php echo _l('volume_m3'); ?>">
                </td>

                <td>
                    <input type="text" name="notes"  class="form-control"  placeholder="<?php echo _l('notes'); ?>">
                </td>
                
                <td>
                    <?php
                    $new_item = 'undefined';
                    if(isset($purchase_order_item)){
                        $new_item = true;
                    }
                    ?>
                    <button type="button" onclick="add_item_to_table_purchase_order('undefined','undefined',<?php echo $new_item; ?>); return false;" class="btn pull-right btn-info"><i class="fa fa-check"></i></button>
                </td>
            </tr>

            <?php if (isset($purchase_order_item)) {
                $i               = 1;
                $items_indicator = 'newitems';
                if (isset($purchase_order_item)) {
                    $items_indicator = 'items';
                }

                foreach ($purchase_order_item as $item) {
                    $manual    = false;
                    $table_row = '<tr class="sortable item">';
                    $table_row .= '<td class="dragger">';


                    $table_row .= form_hidden('' . $items_indicator . '[' . $i . '][itemid]', $item['id']);

                    $table_row .= '<input type="hidden" class="order" name="' . $items_indicator . '[' . $i . '][order]">';

                    $table_row .= '<td class="bold description"><input type="text"  name="' . $items_indicator . '[' . $i . '][product_name]" class="form-control" value="' . $item['product_name'] . '"></td>';

                    $table_row .= '<td><textarea name="' . $items_indicator . '[' . $i . '][description]" class="form-control" style="height: 36px" rows="2">' . clear_textarea_breaks($item['description']) . '</textarea></td>';
                    
                    $table_row .= '<td><input type="number" name="' . $items_indicator . '[' . $i . '][ordered_qty]" class="form-control" value="'.$item['ordered_qty'].'"></td>';

                    $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][received_qty]" class="form-control" readonly value="'.$item['received_qty'].'"></td>';

                    $table_row .= '<td>
                    <div class="dropdown bootstrap-select form-control bs3" style="width: 100%;"><select data-fieldto="unit" data-fieldid="unit" name="'.$items_indicator.'['.$i.'][unit]" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98"><option value="'.$item['unit'].'">'.$item['name'].'</option></select></div>
                    <input type="hidden"  name="'.$items_indicator.'['.$i.'][product_id]" class="form-control input-transparent text-right" value="'.$item['product_id'].'"></td>';

                    $table_row .= '<td><input type="number"  name="'.$items_indicator.'['.$i.'][volume]" class="form-control" value="'.$item['volume'].'"></td>';

                    $table_row .= '<td><input type="text"  name="'.$items_indicator.'['.$i.'][notes]" class="form-control" value="'.$item['notes'].'"></td>';

                    $table_row .= '<td><a href="#" class="btn btn-danger pull-right" onclick="delete_purchase_item(this,' . $item['id'] . '); return false;"><i class="fa fa-times"></i></a></td>';

                    $table_row .= '</tr>';
                    echo $table_row;
                    $i++;
                }
            }
            ?>
            </tbody>
        </table>
    </div>

    <div id="removed-items"></div>
</div>
