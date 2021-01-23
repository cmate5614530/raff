<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="col-md-12">
 <div class="row">
  <div class="col-md-12" id="small-table">
    <div class="panel_s">
      <div class="panel-body">
        <?php echo form_hidden('estimateid'); ?>
        <?php //$this->load->view('admin/planing/table_html'); ?>
        <?php render_datatable(array(
                _l('sale_order_dt_table_heading_number'),
                 _l('sale_phase'),

                 array(
                    'name'=>_l('estimate_dt_table_heading_client'),
                    'th_attrs'=>array('class'=> (isset($client) ? 'not_visible' : ''))
                 ),
                 _l('quote'),
                 _l('shipping_type'),
                 _l('req_shipping_date'),
                 _l('general_notes'),
                 // _l('total_price'),
                 _l('created_user'),
                 _l('date_created'),
                 _l('updated_by'),
            ),'p_sale_order'); ?>
      </div>
    </div>
  </div>
  <div class="col-md-7 small-table-right-col">
    <div id="estimate" class="hide">
    </div>
  </div>
</div>
</div>

