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
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="stock_categories"><?php echo _l('stock_categories'); ?></label>
                                        <select name="stock_categories" id="stock_categories" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                                           <?php foreach($stock_categories as $category){ ?>
                                               <option value="<?php echo $category['order_no']; ?>"><?php echo $category['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="_filters _hidden_inputs stock_categories">
                                            <?php
                                               foreach($stock_categories as $category){?>
                                                <input type="hidden" class="filter cate" name="category_<?php echo $category['order_no']?>">
                                               <?php }?>
                                         </div>
                                    </div>
                               </div>

                               <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="stock_units"><?php echo _l('unit'); ?></label>
                                        <select name="stock_units" id="stock_units" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                                           <?php foreach($stock_units as $unit){ ?>
                                               <option value="<?php echo $unit['unitid']; ?>"><?php echo $unit['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="_filters _hidden_inputs stock_units">
                                            <?php
                                               foreach($stock_units as $unit){?>
                                                <input type="hidden" class="filter unit" name="unit_<?php echo $unit['unitid']?>">
                                               <?php }?>
                                         </div>
                                    </div>
                               </div>

                               <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="unit"><?php echo _l('currency'); ?></label>
                                        <select name="currency" id="currency" class="selectpicker" multiple data-width="100%" data-none-selected-text="<?php echo _l('invoice_status_report_all'); ?>">
                                           <?php foreach($currency as $curr){ ?>
                                               <option value="<?php echo $curr['id']; ?>"><?php echo $curr['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="_filters _hidden_inputs currency">
                                            <?php
                                               foreach($currency as $curr){?>
                                                <input type="hidden" class="filter curr" name="curr_<?php echo $curr['id']?>">
                                               <?php }?>
                                         </div>
                                    </div>
                               </div>
                            </div>
                            
                            <div id="date-range" class="mbot15">
                                <div class="row">
                                   <div class="col-md-3">
                                     <!--  <label for="report-from" class="control-label"><?php echo _l('report_sales_from_date'); ?></label>
                                      <div class="input-group date">
                                         <input type="text" class="form-control datepicker" id="report-from" name="report-from">
                                         <div class="input-group-addon">
                                            <i class="fa fa-calendar calendar-icon"></i>
                                         </div>
                                      </div> -->
                                      <?php echo render_date_input('report-from','report_sales_from_date'); ?>
                                   </div>
                                   <div class="col-md-3">
                                      <!-- <label for="report-to" class="control-label"><?php echo _l('report_sales_to_date'); ?></label>
                                      <div class="input-group date">
                                         <input type="text" class="form-control datepicker" disabled="disabled" id="report-to" name="report-to">
                                         <div class="input-group-addon">
                                            <i class="fa fa-calendar calendar-icon"></i>
                                         </div>
                                      </div> -->
                                      <?php echo render_date_input('report-to','report_sales_to_date','',array('disabled'=> true)); ?>
                                   </div>
                                </div>
                             </div>

                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>

						<?php render_datatable(array(
							_l('product_code'),
							_l('product_name'),
							_l('unit'),
							_l('category'),
							_l('price'),
							_l('currency'),
              _l('allocated_qty'),
							_l('stock_level'),
						),'warehouse-report'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="stock_lists_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">
          <span class="edit-title"><?php echo _l('edit_stock_list'); ?></span>
          <span class="add-title"><?php echo _l('add_stock_list'); ?></span>
        </h4>
      </div>
      <?php echo form_open_multipart('admin/warehouses/stock_lists_manage',array('id'=>'stock_lists_form')); ?>
      <?php echo form_hidden('stocklistId'); ?>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <?php echo render_input('product_code',_l('product_code'),'','text'); ?>
            <div id="product_exists_info" class="hide"></div>
            <?php echo render_input('product_photo',_l('product_photo'),'','file'); ?>
            <?php echo render_input('product_name',_l('product_name'),'','text'); ?>
            <?php echo render_select('unit',$stock_units,array('unitid','name'),_l('unit')); ?>
            <?php echo render_select('category',$stock_categories,array('order_no','name'),_l('category')); ?>
            <?php 
            // if (has_permission('warehouse', '', 'stock_price_view'))
              echo render_input('price',_l('price'),'','number'); ?>
            <?php echo render_select('currency_id',$currency,array('id','name'),_l('currency_id')); ?>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="warehouse_qty">
            </div>
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
        <button type="submit" id="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
        <?php echo form_close(); ?>
      </div>
    </div>
  </div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
        // console.log($('#stock_categories').val())
		$('#stock_categories').change(function(){
        $('.filter.cate').val('')
        var stock_categories = $('#stock_categories').val();
        if(stock_categories.length == 0)
        {
            dt_custom_view('','.table-warehouse-report'); return false;

        } else 
            for(let i = 0; i < stock_categories.length; i++)
            {
                dt_custom_view('category_'+ stock_categories[i], '.table-warehouse-report','category_'+ stock_categories[i]); 
            }
        })

        $('#stock_units').change(function(){
            $('.filter.unit').val('')
            var stock_units = $('#stock_units').val();
            if(stock_units.length == 0)
            {
                dt_custom_view('','.table-warehouse-report'); return false;

            } else 
                for(let i = 0; i < stock_units.length; i++)
                {
                    dt_custom_view('unit_'+ stock_units[i], '.table-warehouse-report','unit_'+ stock_units[i]); 
                }
        })

        $('#currency').change(function(){
            $('.filter.curr').val('')
            var currency = $('#currency').val();
            if(currency.length == 0)
            {
                dt_custom_view('','.table-warehouse-report'); return false;

            } else 
                for(let i = 0; i < currency.length; i++)
                {
                    dt_custom_view('curr_'+ currency[i], '.table-warehouse-report','curr_'+ currency[i]); 
                }
            
        })

        var fnServerParams = {
            "report_from": '[name="report-from"]',
            "report_to": '[name="report-to"]',
          };

        $.each($('._hidden_inputs._filters.stock_categories input'),function(){
           fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
         });

        $.each($('._hidden_inputs._filters.stock_units input'),function(){
           fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
         });

        $.each($('._hidden_inputs._filters.currency input'),function(){
           fnServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
         });

        var report_from = $('input[name="report-from"]');
        var report_to = $('input[name="report-to"]');

        report_from.on('change', function() {
            var val = $(this).val();
            var report_to_val = report_to.val();
            if (val != '') {
               report_to.attr('disabled', false);
               if (report_to_val != '') {
                 filter_by_date();
               }
             } else {
               report_to.attr('disabled', true);
             }
        });

        report_to.on('change', function() {
            var val = $(this).val();
            if (val != '') {
               filter_by_date();
             }
        });

        function filter_by_date() {
         if ($.fn.DataTable.isDataTable('.table-warehouse-report')) {
           $('.table-warehouse-report').DataTable().destroy();
         }
         initDataTable('.table-warehouse-report', window.location.href,[],[],fnServerParams,[0, 'asc']);
       }

        appValidateForm($('form'), {
      product_code: 'required',
      product_name: 'required',
      unit: 'required',
      category: 'required',
      price: 'required',
      currency_id: 'required',
    }, manage_stock_lists);

    $('#stock_lists_modal').on('show.bs.modal', function(event) {
      var button = $(event.relatedTarget)
      var id = button.data('id');
      $('#stock_lists_modal input[name="product_code"]').val('');
      $('#stock_lists_modal input[name="product_photo"]').val('');
      $('#stock_lists_modal input[name="product_name"]').val('');
      $('#stock_lists_modal select[name="unit"]').selectpicker('val','');
      $('#stock_lists_modal select[name="category"]').selectpicker('val','');
      $('#stock_lists_modal input[name="price"]').val('');
      $('#stock_lists_modal select[name="currency_id"]').selectpicker('val','');
      $('#stock_lists_modal input[name="stocklistId"]').val('');

      $('#stock_lists_modal .add-title').removeClass('hide');
      $('#stock_lists_modal .edit-title').addClass('hide');

      if (typeof(id) !== 'undefined') {
        $('input[name="stocklistId"]').val(id);
        $('#stock_lists_modal .add-title').addClass('hide');
        $('#stock_lists_modal .edit-title').removeClass('hide');

        var $stockListModal = $('#stock_lists_modal');
                requestGetJSON('warehouses/get_stock_list_by_id/' + id).done(function (response) {
                    $stockListModal.find('#product_code').val(response.product_code);
                    $stockListModal.find('#product_name').val(response.product_name);
                    $stockListModal.find('#stock_level').val(response.stock_level);
                    $stockListModal.find('#price').val(response.price);
                    $stockListModal.find('#unit').selectpicker('val', response.unit);
                    $stockListModal.find('#category').selectpicker('val', response.order_no);

                    if(response.order_no == 2 || response.order_no == 3)
                    {
                      $('input[name="price"]').prop('disabled',true)
                    }
                    $stockListModal.find('#currency_id').selectpicker('val', response.currency_id);
                    init_selectpicker();
                });

                //Apeending Warehouse and transaction qty from transfer..
                var tranferReqUrl = admin_url +'warehouses/get_transfers_by_product_code/' + id ;
                requestGetJSON(tranferReqUrl).done(function (results) {
                  console.log(results)
                  $('.warehouse_qty').empty();
                  if(results.length > 0)
                  {
                    var data_row = '';
                    var i = 0;
                    data_row += '<label style="font-size: 14px;font-weight: 500"><?php echo _l('stock_by_warehouse')?></label><table width="100%" style="border:1px solid;"><thead style="border:1px solid;"><th width="30%" style="font-size: 12px;font-weight: 500;border:1px solid #bfcbd9;text-align: center;"><?php echo _l('warehouse_name')?></th><th width="20%" style="font-size: 12px;font-weight: 500;border:1px solid #bfcbd9;text-align: center;padding: 4px;"><?php echo _l('warning_enable')?></th><th width="20%" style="font-size: 12px;font-weight: 500;border:1px solid #bfcbd9;text-align: center;"><?php echo _l('qty')?></th><th width="30%" style="font-size: 12px;font-weight: 500;border:1px solid #bfcbd9;text-align: center;"><?php echo _l('minimum_stock_level')?></th></thead><tbody style="border:1px solid #bfcbd9;">';

                    results.forEach( e => {
                      if(e.limit){
                        data_row += '<tr><td style="border:1px solid #bfcbd9;text-align: center;">'+e.warehouse+'<input type="hidden" class="warehouse_id" name="warning['+i+'][warehouse_id]" value="'+e.warehouse_id+'"></td><td style="border:1px solid #bfcbd9;text-align: center;"><input type="checkbox" name="warning['+i+'][warning_enable]" class="warning_enable" checked></td><td style="border:1px solid #bfcbd9;text-align: center;">'+e.qty+'</td><td style="border:1px solid #bfcbd9;text-align: center;padding:8px;"><input type="number" class="limit" name="warning['+i+'][limit]" value="'+e.limit+'"></td></tr>';
                      }
                      else {
                        data_row += '<tr><td style="border:1px solid #bfcbd9;text-align: center;">'+e.warehouse+'<input type="hidden" class="warehouse_id" name="warning['+i+'][warehouse_id]" value="'+e.warehouse_id+'"></td><td style="border:1px solid #bfcbd9;text-align: center;"><input type="checkbox" name="warning['+i+'][warning_enable]" class="warning_enable"></td><td style="border:1px solid #bfcbd9;text-align: center;">'+e.qty+'</td><td style="border:1px solid #bfcbd9;text-align: center;padding:8px;"><input type="number" class="limit" name="warning['+i+'][limit]" value="0" disabled></td></tr>';
                      }
                      
                      i++;
                    })
                    data_row += '</tbody></table>';
                    $('.warehouse_qty').append(data_row);
                  }

                  $('.warning_enable').change(function(){
                    if($(this).prop('checked')){
                      $(this).parents('tr').find('.limit').prop('disabled',false);
                      $(this).parents('tr').find('.warehouse_id').prop('disabled',false);
                    } else {
                      $(this).parents('tr').find('.limit').val('')
                      $(this).parents('tr').find('.limit').prop('disabled',true);
                    }

                  })
                });
      }

      $('input[name="product_code"]').keyup(function(){
        var product = $(this).val();
        console.log(product)
          var $productExistsDiv = $('#product_exists_info');

          if(product == '') {
              $productExistsDiv.addClass('hide');
              return;
          }

          $.post(admin_url+'warehouses/check_duplicate_product_code', {product_code:product})
          .done(function(response) {
              if(response) {
                  response = JSON.parse(response);
                  if(response.exists == true) {
                      $productExistsDiv.removeClass('hide');
                      $productExistsDiv.html('<div class="info-block mbot15">'+response.message+'</div>');
                      $('#submit').prop('disabled',true);

                  } else {
                      $productExistsDiv.addClass('hide');
                      $('#submit').prop('disabled',false);
                  }
              }
          });
      })
    });
		initDataTable('.table-warehouse-report', window.location.href,[],[],fnServerParams,[0, 'asc']);
	});

  function manage_stock_lists(form) {
    var formData = new FormData($(form)[0]);
    $.ajax({
        url: form.action,
        type: form.method,
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
          console.log(response)
          response = JSON.parse(response);
        if (response.success == true) {
          $('.table-stock_lists').DataTable().ajax.reload();
          alert_float('success', response.message);
        }
        $('#stock_lists_modal').modal('hide');
        }
    });
    return false;
  }

  $('select[name="category"]').change(function(){
    if($(this).val() == 2 || $(this).val() == 3)
    {
      $('input[name="price"]').prop('disabled',true)
    } else {
      $('input[name="price"]').prop('disabled',false)
    }
  })

</script>