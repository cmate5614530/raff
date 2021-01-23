<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'product_code',
    'product_name',
    db_prefix() . 'units.name as unit',
    db_prefix() . 'stock_categories.name as category',
    'price',
    db_prefix() . 'currencies.name as currency',
    'stock_level'
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'stock_lists';

$join = [
     'LEFT JOIN ' . db_prefix() . 'units ON ' . db_prefix() . 'units.unitid = ' . db_prefix() . 'stock_lists.unit',
     'LEFT JOIN ' . db_prefix() . 'stock_categories ON ' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category',
     'LEFT JOIN ' . db_prefix() . 'currencies ON ' . db_prefix() . 'currencies.id = ' . db_prefix() . 'stock_lists.currency_id',
     ];

$additionalSelect = [
    db_prefix() . 'stock_lists.id',
     'unit',
     'category',
    ];
// $where =['AND '.db_prefix().'stock_lists.created_by = '.get_staff_user_id().''];
$where =[];
$filter = [];

$this->ci->load->model('warehouses_model');
$categories  = $this->ci->warehouses_model->get_stock_categories();
$categoriesIds = [];

foreach ($categories as $cate) {
    if ($this->ci->input->post('category_' . $cate['order_no'])) {
        array_push($categoriesIds, $cate['order_no']);
    }
}
if (count($categoriesIds) > 0) {
    array_push($filter, 'AND category IN (' . implode(', ', $categoriesIds) . ')');
}

$units  = $this->ci->warehouses_model->get_units();
$unitsIds = [];

foreach ($units as $unit) {
    if ($this->ci->input->post('unit_' . $unit['unitid'])) {
        array_push($unitsIds, $unit['unitid']);
    }
}
if (count($unitsIds) > 0) {
    array_push($filter, 'AND unit IN (' . implode(', ', $unitsIds) . ')');
}

$this->ci->load->model('currencies_model');
$currencies  = $this->ci->currencies_model->get();
$currenciesIds = [];

foreach ($currencies as $currency) {
    if ($this->ci->input->post('curr_' . $currency['id'])) {
        array_push($currenciesIds, $currency['id']);
    }
}
if (count($currenciesIds) > 0) {
    array_push($filter, 'AND currency_id IN (' . implode(', ', $currenciesIds) . ')');
}

$field = db_prefix().'stock_lists.created_at';
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

if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}


$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    // for ($i = 0; $i < count($aColumns); $i++) {
    //     $_data = $aRow[$aColumns[$i]];

        $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#stock_lists_modal',
        'data-id'                 => $aRow['id'],
        ];
    //     if ($aColumns[$i] == 'product_photo') {
    //         if($aRow['product_photo'] != '')
    //             $_data = '<a href="#"><img src="'.base_url($aRow['product_photo']).'" class="staff-profile-image-small"></a>';
    //         else
    //             $_data = '<a href="#"><img src="'.base_url('assets/images/user-placeholder.jpg').'" class="staff-profile-image-small"></a>';
    //     }
        
    //     if ($aColumns[$i] == 'product_name') {
    //         $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
    //     }
    //     $row[] = $_data;
    // }
    // $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    // $row[]              = $options .= icon_btn('warehouses/stock_list_delete/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $row[] = $aRow['product_code'];
    $row[] = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $aRow['product_name'] . '</a></span>';
    $row[] = $aRow['unit'];
    $row[] = $aRow['category'];
    $row[] = $aRow['price'];
    $row[] = $aRow['currency'];
    $allocated_qty  = $this->ci->warehouses_model->get_allocated_item_amount_by_product($aRow['id']);
    $row[] = $allocated_qty;
    $row[] = $aRow['stock_level'];
    $output['aaData'][] = $row;
}
