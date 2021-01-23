<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'order_no',
    'warehouse_name',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'warehouses';
$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, [], [], [
    'id',
]);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];

        $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#warehouse_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'warehouse_name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);
    // $row[] = $options .= icon_btn('warehouses/warehouse_delete/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $row[] = $options;
    $output['aaData'][] = $row;
}