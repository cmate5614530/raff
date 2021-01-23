<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php //print_r($product_code); exit(); ?>
<!-- <div class="form-group mbot25 items-wrapper select-placeholder"> -->
<div class="form-group">
    <div class="<?php echo 'input-group input-group-select';?>">
        <div class="items-select-wrapper">
            <select name="item_select" class="selectpicker no-margin<?php if($ajaxItems == true){echo ' ajax-search';} ?>" data-width="true" id="item_select" data-none-selected-text="<?php echo _l('add_item'); ?>" data-live-search="true">
                <option value=""></option>
                <?php foreach($product_code as $code){ ?>
                    <optgroup data-group-id="<?php echo $code['id']; ?>" label="<?php echo $code['product_name']; ?>">

                            <!-- <option value="<?php echo $code['id']; ?>" >(<?php echo app_format_number($code['unit']); ; ?>) <?php echo $code['product_name']; ?></option> -->
                            
                                <option value="<?php echo $code['id']; ?>" data-subtext="<?php echo strip_tags(mb_substr($code['product_code'],0,200)).'...'; ?>"><?php echo $code['product_name']; ?></option>
                           

                    </optgroup>
                <?php } ?>
            </select>
        </div>`
    </div>
</div>
