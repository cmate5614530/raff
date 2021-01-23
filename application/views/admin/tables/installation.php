<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    'name',
    'w1.warehouse_name as take_from',
    'w2.warehouse_name as export_to',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'installation';

 $join = [
     'LEFT JOIN ' . db_prefix() . 'warehouses w1 ON w1.id = ' . db_prefix() . 'installation.take_from',
    'LEFT JOIN ' . db_prefix() . 'warehouses w2 ON w2.id = ' . db_prefix() . 'installation.export_to',
     ];

$additionalSelect = [
    db_prefix() . 'installation.id',
    ];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, [], $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
// print_r($rResult); exit();
foreach ($rResult as $aRow) {
    $row = [];

    $row[] = $aRow['name'];

    $row[] = $aRow['take_from'];
    $row[] = $aRow['export_to'];

    $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#installation_process_modal',
        'data-id'                 => $aRow['id'],
        ];
        
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);
    // $row[]              = $options .= icon_btn('manufacturing_settings/delete_installation_process/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $row[]              = $options ;
    $output['aaData'][] = $row;
}
