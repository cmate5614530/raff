<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                            <div class="row">
                                <!-- <div class="col-md-3 pricing_categories">
                                    <?php echo render_select( 'product_category',$product_categories,array( 'order_no','name'), _l('product_category')); ?>
                                </div> -->

                                <div class="col-md-4">
                                     <div class="form-group">
                                        <label for="product_category"><?php echo _l('product_category'); ?></label>
                                        <select name="product_category" id="product_category" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">

                                           <?php foreach($product_categories as $cate){ ?>
                                               <option value="<?php echo $cate['order_no']; ?>"><?php echo $cate['name'] ?></option>
                                            <?php } ?>
                                     </select>
                                  </div>
                               </div>
                            </div>
                            
                            <div class="_filters _hidden_inputs">
                                <?php
                                   foreach($product_categories as $category){?>
                                    <input type="hidden" class="filter" name="products_<?php echo $category['order_no']?>">
                                   <?php }?>
                             </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('product_code'),
                            _l('product_photo'),
                            _l('product_name'),
                            _l('pack_capacity'),
                            _l('packing_type'),
                            _l('volume_m3'),
                            _l('price'),
                        ),'product-recipe'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
</div>

<?php init_tail(); ?>
<script>
    $(function(){

        // $('#product_category').change(function(){
        //     $('.filter').val('')
        //     var product_category = $('#product_category').val();
        //     for(let i = 0; i < product_category.length; i++){
        //         dt_custom_view('products_'+ product_category[i], '.table-product-recipe','products_'+ product_category[i]); 
        //     }
            
        // })

        $('#product_category').change(function(){
            $('.filter').val('')
            var product_category = $('#product_category').val();
            if(product_category.length == 0)
            {
                dt_custom_view('','.table-product-recipe'); return false;

            } else 
                for(let i = 0; i < product_category.length; i++)
                {
                    dt_custom_view('products_'+ product_category[i], '.table-product-recipe','products_'+ product_category[i]); 
                }
        })

        var ProductRecipe_ServerParams = {};
        $.each($('._hidden_inputs._filters input'),function(){
           ProductRecipe_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
         });
        initDataTable('.table-product-recipe', window.location.href,['undefined'], ['undefined'], ProductRecipe_ServerParams, []);
    });
</script>
</body>
</html>
