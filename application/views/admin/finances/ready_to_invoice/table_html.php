<?php defined('BASEPATH') or exit('No direct script access allowed');

$table_data = array(
  _l('wo_heading_number'),
  _l('wo_phase_id'),
  _l('client'),
  _l('tags'),
  _l('sum_volume_m3'),
  _l('created_user'),
  _l('date_time'),
  _l('updated_user'));

$custom_fields = get_custom_fields('invoice',array('show_on_table'=>1));
foreach($custom_fields as $field){
  array_push($table_data,$field['name']);
}
$table_data = hooks()->apply_filters('invoices_table_columns', $table_data);
render_datatable($table_data, 'installation_work_order');
?>
