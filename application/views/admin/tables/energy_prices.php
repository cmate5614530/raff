<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'energy_price',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'energy_prices';
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
        'data-target'             => '#energy_price_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'energy_price') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    // $row[]              = $options .= icon_btn('manufacturing_settings/delete_energy_prices/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $row[]              = $options;
    $output['aaData'][] = $row;
}
