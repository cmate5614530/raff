<?php

defined('BASEPATH') or exit('No direct script access allowed');

$project_id = $this->ci->input->post('project_id');

$aColumns = [
    'number',
    db_prefix() .'staff.firstname as c_firstname',
    get_sql_select_client_company(),
    db_prefix() . 'pricing_categories.name as price_category_name',
    // '',
    db_prefix() . 'estimates.total as sold',
    ];

$join = [
    'LEFT JOIN ' . db_prefix() . 'clients ON ' . db_prefix() . 'clients.userid = ' . db_prefix() . 'estimates.clientid',
    'LEFT JOIN ' . db_prefix() . 'currencies ON ' . db_prefix() . 'currencies.id = ' . db_prefix() . 'estimates.currency',
    'LEFT JOIN ' . db_prefix() . 'staff ON '. db_prefix() . 'staff.staffid = ' . db_prefix() . 'estimates.addedfrom',
    'LEFT JOIN ' . db_prefix() . 'proposals ON '. db_prefix() . 'proposals.id = ' . db_prefix() . 'estimates.rel_quote_id',
    'LEFT JOIN ' . db_prefix() . 'pricing_categories ON '. db_prefix() . 'pricing_categories.order_no = ' . db_prefix() . 'proposals.pricing_category_id',
];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'estimates';


$where  = [];
$filter = [];

if($this->ci->input->post('without_archive') == 1){
    array_push($filter, 'AND tblestimates.active=1');
}

$this->ci->load->model('staff_model');
$staffs  = $this->ci->staff_model->get();
$staffsIds = [];

foreach ($staffs as $staff) {
    if ($this->ci->input->post('staff_' . $staff['staffid'])) {
        array_push($staffsIds, $staff['staffid']);
    }
}
if (count($staffsIds) > 0) {
    array_push($filter, 'AND tblestimates.addedfrom IN (' . implode(', ', $staffsIds) . ')');
}

$this->ci->load->model('clients_model');
$customers  = $this->ci->clients_model->get();
$customersIds = [];

foreach ($customers as $customer) {
    if ($this->ci->input->post('customer_' . $customer['userid'])) {
        array_push($customersIds, $customer['userid']);
    }
}
if (count($customersIds) > 0) {
    array_push($filter, 'AND tblestimates.clientid IN (' . implode(', ', $customersIds) . ')');
}

$this->ci->load->model('sale_model');
$pricing_categories  = $this->ci->sale_model->get_pricing_category_list(); 
$pricing_categoriesIds = [];

foreach ($pricing_categories as $pcate) {
    if ($this->ci->input->post('pcate_' . $pcate['order_no'])) {
        array_push($pricing_categoriesIds, $pcate['order_no']);
    }
}
if (count($pricing_categoriesIds) > 0) {
    array_push($filter, 'AND tblproposals.pricing_category_id IN (' . implode(', ', $pricing_categoriesIds) . ')');
}

$field = db_prefix().'estimates.datecreated';
$from_date = to_sql_date($this->ci->input->post('report_from'));
$to_date   = to_sql_date($this->ci->input->post('report_to'));
$custom_date_select = '';
if($from_date != '')
    if ($from_date == $to_date) {
        $custom_date_select = 'AND ' . $field . ' = "' . $this->ci->db->escape_str($from_date) . '"';
    } else {
        $custom_date_select = 'AND (' . $field . ' BETWEEN "' . $this->ci->db->escape_str($from_date) . '" AND "' . $this->ci->db->escape_str($to_date) . '")';
    }

if ($custom_date_select != '') {
    array_push($filter, $custom_date_select);
}

if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}

if (!has_permission('estimates', '', 'view')) {
    $userWhere = 'AND ' . get_estimates_where_sql_for_staff(get_staff_user_id());
    array_push($where, $userWhere);
}

$aColumns = hooks()->apply_filters('estimates_table_sql_columns', $aColumns);


$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, [
    db_prefix() . 'estimates.id',
    db_prefix() . 'estimates.clientid',
    db_prefix() . 'estimates.invoiceid',
    db_prefix() . 'currencies.name as currency_name',
    
    db_prefix() . 'estimates.addedfrom',
    
    db_prefix() .'staff.lastname as c_lastname',
    db_prefix() .'estimates.rel_quote_id'
]);

$output  = $result['output'];
$rResult = $result['rResult'];
// print_r($rResult); exit();
foreach ($rResult as $aRow) {
    $row = [];
    
    $row[] = '<a href="' . admin_url('estimates/list_estimates/' . $aRow['id']) . '" target="_blank">' . format_estimate_number($aRow['id']) . '</a>';

    $row[] = '<a href="' . admin_url('staff/member/' . $aRow['addedfrom']) . '">' . $aRow['c_firstname']. ' '. $aRow['c_lastname'] . '</a>';

    $row[] = '<a href="' . admin_url('clients/client/' . $aRow['clientid']) . '">' . $aRow['company'] . '</a>';

    $row[] = $aRow['price_category_name'];
    
    $row[] = $aRow['sold'];
    
    $cost_data = $this->ci->db->query('SELECT tblitemable.`qty`,tblstock_lists.`price` FROM tblitemable LEFT JOIN tblstock_lists ON tblstock_lists.`id` = tblitemable.`rel_product_id` WHERE tblitemable.`rel_id`= '.$aRow['rel_quote_id'])->result_array();
    $amount = 0;
    foreach ($cost_data as $key => $cost) {
        $cost_val = $cost['qty']*$cost['price'];
        $amount += $cost_val;
    }

    $row[] = number_format($amount,2);
    
    $row[] = number_format($aRow['sold']-$amount,2);

    $output['aaData'][] = $row;
}

