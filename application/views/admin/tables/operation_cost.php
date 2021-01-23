<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'op_cost_per_sec',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'operation_cost';
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
        'data-target'             => '#opc_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'op_cost_per_sec') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    // $row[]              = $options .= icon_btn('manufacturing_settings/delete_work_hours_capacity/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $row[]              = $options;
    $output['aaData'][] = $row;
}
