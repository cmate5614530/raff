<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() .'purchase_order.id as id',
    'updated_at',
    'approval_date',
    db_prefix().'purchase_order_phases.phase as phase',
    'approval',
    '(SELECT company FROM ' . db_prefix() . 'clients where userid = ' . db_prefix() . 'purchase_order.acc_list) as company',
    'note',
    'staff1.firstname as c_firstname',
    'staff2.firstname as u_firstname',

];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'purchase_order';

$join = [
   'LEFT JOIN ' . db_prefix() . 'staff staff1 ON staff1.staffid = ' . db_prefix() . 'purchase_order.created_user',
   'LEFT JOIN ' . db_prefix() . 'staff staff2 ON staff2.staffid = ' . db_prefix() . 'purchase_order.updated_user',
   'LEFT JOIN ' . db_prefix() . 'purchase_order_phases ON ' . db_prefix() . 'purchase_order_phases.id = ' . db_prefix() . 'purchase_order.purchase_phase_id',
];

$where  = ['AND '.db_prefix() . 'purchase_order.approval = 0'];

$additionalSelect = [
    db_prefix() . 'purchase_order_phases.order_no as order_no',
    'acc_list',
    'created_user',
    'updated_user',
    'staff1.lastname as c_lastname',
    'staff2.lastname as u_lastname',

];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    $subjectOutput = $aRow['id'];
    $subjectOutput .= '<div class="row-options">';

    $subjectOutput .= '<a href="' . admin_url('purchases/manage_purchase_order/' . $aRow['id']) . '">' . _l('edit') . '</a>';
    $subjectOutput .= ' | <a href="' . admin_url('purchases/delete_purchase_order/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';

    $subjectOutput .= '</div>';
    
    $row[] = $subjectOutput;
    
    // $row[] = $aRow['updated_at'];
    $row[] = date("d-m-Y H:i:s", strtotime($aRow['updated_at']));
    
    // $row[] = $aRow['approval_date'];
    if($aRow['approval_date'] != NULL)
        $row[] = date("d-m-Y", strtotime($aRow['approval_date']));
    else
        $row[] = '';

    $row[] = format_purchase_phase($aRow['order_no'],$aRow['phase']);

    $row[] = format_approval_status($aRow['approval']);

    $row[] = $aRow['company'];

    $row[] = $aRow['note'];

    $row[] = '<a href="' . admin_url('staff/member/' . $aRow['created_user']) . '">' . $aRow['c_firstname']. ' '. $aRow['c_lastname'] . '</a>';

    if(!empty($aRow['updated_user']))
    {
        $row[] = '<a href="' . admin_url('staff/member/' . $aRow['updated_user']) . '">' . $aRow['u_firstname']. ' '. $aRow['u_lastname'] . '</a>';
    }
    else
        $row[] = '';

    $output['aaData'][] = $row;
}
