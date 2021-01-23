<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="form-group mbot25">
    <div class="<?php if(has_permission('items','','create')){ echo 'input-group input-group-select'; } ?>">
        <div class="items-select-wrapper">
            <select name="item_select" class="selectpicker no-margin<?php if($ajaxItems == true){echo ' ajax-search';} ?><?php if(has_permission('items','','create')){ echo ' _select_input_group'; } ?>" data-width="true" id="item_select" data-none-selected-text="<?php echo _l('add_item'); ?>" data-live-search="true">
                <option value=""></option>
                <?php foreach($product_code as $code){ ?>
                    <optgroup data-group-id="<?php echo $code['id']; ?>" label="<?php echo $code['product_name']; ?>">

                            <option value="<?php echo $code['id']; ?>" >(<?php echo app_format_number($code['unit']); ; ?>) <?php echo $code['product_name']; ?></option>

                    </optgroup>
                <?php } ?>
            </select>
        </div>
    </div>
</div>
