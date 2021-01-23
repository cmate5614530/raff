<?php defined('BASEPATH') or exit('No direct script access allowed');

$table_data = array(
   _l('sale_order_dt_table_heading_number'),
   _l('sale_phase'),

   array(
      'name'=>_l('estimate_dt_table_heading_client'),
      'th_attrs'=>array('class'=> (isset($client) ? 'not_visible' : ''))
   ),

   _l('quote'),
   _l('shipping_type'),
   _l('req_shiping_date'),
   _l('general_notes'),
   _l('total_price'),
   _l('created_user'),
   _l('date_created'),
   _l('updated_by'),
);

// $custom_fields = get_custom_fields('estimate',array('show_on_table'=>1));

// foreach($custom_fields as $field){
//    array_push($table_data,$field['name']);
// }

$table_data = hooks()->apply_filters('estimates_table_columns', $table_data);
render_datatable($table_data, isset($class) ? $class : 'estimates');
