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
                                <div class="col-md-3">
                                    <div class="form-group">
                                    <label for="price_category" class="control-label"><?php echo _l('pricing_category');?></label>
                                      <div class="dropdown bootstrap-select form-control bs3">
                                        <select data-fieldto="price_category" data-fieldid="price_category" name="price_category" id="price_category" class="selectpicker form-control" data-width="100%" data-none-selected-text="Nothing selected" data-live-search="true" tabindex="-98">
                                          <option value=""></option>
                                          <?php 
                                            foreach ($price_cat as $key => $value) { ?>
                                            <option value="<?php echo $value['order_no']?>"><?php echo $value['name']?></option>
                                          <?php } ?>
                                        </select>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading"/>
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('product_code'),
                            _l('product_photo'),
                            _l('product_name'),
                            _l('barcode_no'),
                            _l('pack_capacity'),
                            _l('packing_type'),
                            _l('volume_m3'),
                            _l('stock_quantity'),
                            _l('price')
                        ), 'product_list'); ?>
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
        initDataTable('.table-product_list', window.location.href);
        $('.btn-dt-reload').hide();
    });
    var base_price = [];
    
    $('.table-product_list').on( 'init.dt', function () {
        var trArr = $('body').find('tr');
        for(let i=1; i<trArr.length; i++){
            let product_id = trArr[i].childNodes[0].firstChild.value;
            console.log(product_id)
            requestGetJSON('warehouses/get_stock_list_by_id/' + product_id).done(function (response) {
                console.log(response)
                base_price.push({id:response.id,base_price:response.price});

                var trArr = $('#price_category').parents().find('tr');
                let product_list_price = 0;
                let data = {
                    <?php echo $this->security->get_csrf_token_name(); ?> : "<?php echo $this->security->get_csrf_hash(); ?>",id:product_id, product_list_price:product_list_price
                }
                $.post(admin_url+'warehouses/update_product_price', data).done(function(response) {
                    var av_tables = ['.table-product_list'];
                    $.each(av_tables, function(i, selector) {
                        if ($.fn.DataTable.isDataTable(selector)) {
                            $(selector).DataTable().ajax.reload(null, false);
                        }
                    });
                });
            });
        }
    });

    $('#price_category').change(function(){
        var price_category_id = $('#price_category').val();
        if(price_category_id)
        {
            requestGetJSON('products/get_price_category_calc/' + price_category_id).done(function (response) {
                if(response.calc_value1)
                    var value1 = response.calc_value1;
                else
                    var value1 = 1;

                if(response.calc_value2)
                    var value2 = response.calc_value2;
                else
                    var value2 = 1;

                var trArr = $('#price_category').parents().find('tr');
                for(let i=1; i<trArr.length; i++){

                    let product_list_price = ((Number(base_price[i-1].base_price))*value1*value2).toFixed(2);
                    let data = {
                        <?php echo $this->security->get_csrf_token_name(); ?> : "<?php echo $this->security->get_csrf_hash(); ?>",id:base_price[i-1].id, product_list_price:product_list_price
                    }
                    $.post(admin_url+'warehouses/update_product_price', data).done(function(response) {
                        var av_tables = ['.table-product_list'];
                        $.each(av_tables, function(i, selector) {
                            if ($.fn.DataTable.isDataTable(selector)) {
                                $(selector).DataTable().ajax.reload(null, false);
                            }
                        });
                    });
                }
            });
        } else {
            var trArr = $('#price_category').parents().find('tr');
            for(let i=1; i<trArr.length; i++){
                let product_list_price = 0;
                let data = {
                    <?php echo $this->security->get_csrf_token_name(); ?> : "<?php echo $this->security->get_csrf_hash(); ?>",id:base_price[i-1].id, product_list_price:product_list_price
                }
                $.post(admin_url+'warehouses/update_product_price', data).done(function(response) {
                    var av_tables = ['.table-product_list'];
                    $.each(av_tables, function(i, selector) {
                        if ($.fn.DataTable.isDataTable(selector)) {
                            $(selector).DataTable().ajax.reload(null, false);
                        }
                    });
                });
            }
        }
        
    })

    
    
    
</script>