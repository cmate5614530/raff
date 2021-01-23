<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() . 'stock_lists.product_code as p_code',
    db_prefix() . 'transfer_lists.updated_at',
    'w1.warehouse_name as t_from',
    'w2.warehouse_name as t_to',
    'transaction_notes',
    'transaction_qty',
    'description',
    'staff1.firstname as c_firstname',
    'staff2.firstname as u_firstname',
];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'transfer_lists';
$where  = ['AND '.db_prefix() . 'transfer_lists.allocation != 1'];
$join = [
    'LEFT JOIN ' . db_prefix() . 'stock_lists ON ' . db_prefix() . 'stock_lists.id = ' . db_prefix() . 'transfer_lists.stock_product_code',
    'LEFT JOIN ' . db_prefix() . 'warehouses w1 ON w1.id = ' . db_prefix() . 'transfer_lists.transaction_from',
    'LEFT JOIN ' . db_prefix() . 'warehouses w2 ON w2.id = ' . db_prefix() . 'transfer_lists.transaction_to',
    'LEFT JOIN ' . db_prefix() . 'staff staff1 ON staff1.staffid = ' . db_prefix() . 'transfer_lists.created_user',
    'LEFT JOIN ' . db_prefix() . 'staff staff2 ON staff2.staffid = ' . db_prefix() . 'transfer_lists.updated_user',
];

$additionalSelect = [
    db_prefix() . 'transfer_lists.id',
    'staff1.lastname as c_lastname',
    'staff2.lastname as u_lastname',
    'stock_product_code',
    'transaction_from',
    'created_user',
    'updated_user'
];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    
    $subjectOutput = $aRow['p_code'];
    $subjectOutput .= '<div class="row-options">';

    $subjectOutput .= '<a href="' . admin_url('warehouses/transfers_manage/' . $aRow['id']) . '">' . _l('edit') . '</a>';
  

    // if (has_permission('contracts', '', 'delete')) {
    $subjectOutput .= ' | <a href="' . admin_url('warehouses/transfer_delete/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';
    // }

    $subjectOutput .= '</div>';
    $row[] = $subjectOutput;

    // $row[] = $aRow['tbltransfer_lists.updated_at'];
    $row[] = date("d-m-Y H:i:s", strtotime($aRow['tbltransfer_lists.updated_at']));

    $row[] = $aRow['t_from'];

    $row[] = $aRow['t_to'];

    $row[] = $aRow['transaction_notes'];

    $row[] = $aRow['transaction_qty'];

    $row[] = $aRow['description'];

    $row[] = '<a href="' . admin_url('staff/member/' . $aRow['created_user']) . '">' . $aRow['c_firstname']. ' '. $aRow['c_lastname'] . '</a>';

    if(!empty($aRow['updated_user']))
    {
        $row[] = '<a href="' . admin_url('staff/member/' . $aRow['updated_user']) . '">' . $aRow['u_firstname']. ' '. $aRow['u_lastname'] . '</a>';
    }
    else
        $row[] = '';
    $output['aaData'][] = $row;
}
