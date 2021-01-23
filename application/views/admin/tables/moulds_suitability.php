<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [

    db_prefix() . 'machines_list.name',
    db_prefix() . 'moulds.mould_name',


];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'mould_suitability';

$join = [
    'LEFT JOIN ' . db_prefix() . 'machines_list ON ' . db_prefix() . 'machines_list.id = ' . db_prefix() . 'mould_suitability.machine_id',
    'LEFT JOIN ' . db_prefix() . 'moulds ON ' . db_prefix() . 'moulds.id = ' . db_prefix() . 'mould_suitability.mould_id',
];
// $join1 = [
//     'LEFT JOIN ' . db_prefix() . 'moulds ON ' . db_prefix() . 'moulds.id = ' . db_prefix() . 'mould_suitability.mould_id',
// ];
$additionalSelect = [
    db_prefix() . 'mould_suitability.id',
    'machine_id',

];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, [], $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];

        $attributes = [
            'data-toggle'             => 'modal',
            'data-target'             => '#mould_suitability',
            'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    $row[]              = $options .= icon_btn('manufacturing_settings/delete_moulds_suitability/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $output['aaData'][] = $row;
}
