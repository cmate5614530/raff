<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="col-md-12">
<div class="row">
  <div class="col-md-12" id="small-table">
    <div class="panel_s">
      <div class="panel-body">

        <div class="horizontal-tabs">
          <ul class="nav nav-tabs nav-tabs-horizontal" role="tablist">
             <li role="presentation" class="active">
                <a href="#active_sale_orders" aria-controls="active_sale_orders" role="tab" data-toggle="tab">
                   <i class="fa fa-tasks menu-icon"></i> <?php echo _l('active_sale_orders'); ?>
                </a>
             </li>
             <li role="presentation">
                <a href="#archived_sale_orders" onclick="init_table_staff_projects(true);" aria-controls="archived_sale_orders" role="tab" data-toggle="tab">
                <i class="fa fa-bars menu-icon"></i> <?php echo _l('archived_sale_orders'); ?>
                </a>
             </li>
          </ul>
          <div class="tab-content">
             <div role="tabpanel" class="tab-pane active" id="active_sale_orders">
                <?php echo form_hidden('estimateid',$estimateid); ?>
                <?php $this->load->view('admin/estimates/table_html'); ?>
             </div>

             <div role="tabpanel" class="tab-pane" id="archived_sale_orders">
                <?php echo form_hidden('estimateid',$estimateid); ?>
                <?php $this->load->view('admin/estimates/table1_html'); ?>
             </div>
          </div>
       </div>

      </div>
    </div>
  </div>
  <div class="col-md-7 small-table-right-col">
    <div id="estimate" class="hide">
    </div>
  </div>
</div>
</div>
