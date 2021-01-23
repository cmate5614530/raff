<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            
            <div class="row">
               <div class="col-md-12" id="small-table">
                  <div class="panel_s">
                     <div class="panel-body">
                        <!-- if invoiceid found in url -->
                        <?php echo form_hidden('proposal_id',$proposal_id); ?>
                        <?php
                           // $table_data = array(
                           //    _l('proposal') . ' #',
                           //    _l('proposal_subject'),
                           //    _l('proposal_to'),
                           //    _l('proposal_total'),
                           //    _l('proposal_date'),
                           //    _l('proposal_open_till'),
                           //    _l('tags'),
                           //    _l('proposal_date_created'),
                           //    _l('proposal_status'),
                           //  );

                           $table_data = array(
                              _l('quote') . ' #',
                              _l('quote_phase'),
                              _l('client'),
                              _l('pricing_category'),
                              _l('tags'),
                              _l('sum_volume_m3'),
                              _l('discount'),
                              _l('proposal_total'),
                              _l('created_user'),
                              _l('proposal_date_created'),
                              _l('updated_by'),
                              _l('proposal_status'),
                            );

                             $custom_fields = get_custom_fields('proposal',array('show_on_table'=>1));
                             foreach($custom_fields as $field){
                                array_push($table_data,$field['name']);
                             }

                             $table_data = hooks()->apply_filters('proposals_table_columns', $table_data);
                             render_datatable($table_data,'proposals',[],[
                                 'data-last-order-identifier' => 'proposals',
                                 'data-default-order'         => get_table_last_order('proposals'),
                             ]);
                           ?>
                     </div>
                  </div>
               </div>
               <div class="col-md-7 small-table-right-col">
                  <div id="proposal" class="hide">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php //$this->load->view('admin/includes/modals/sales_attach_file'); ?>
<script>var hidden_columns = [4,5,6,7];</script>
<?php init_tail(); ?>
<div id="convert_helper"></div>
<script>
   var proposal_id;
   $(function(){
     var Proposals_ServerParams = {};
     $.each($('._hidden_inputs._filters input'),function(){
       Proposals_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
     });
     initDataTable('.table-proposals', window.location.href, ['undefined'], ['undefined'], Proposals_ServerParams, [0,'desc']);
     init_proposal();
   });
</script>
</body>
</html>
