<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() .'pricing_categories.name',
    'calc_value1',
    'calc_value2',
    'order_no',
    db_prefix() . 'currencies.name',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'pricing_categories';

//$join = [];
 $join = [
    'LEFT JOIN ' . db_prefix() . 'currencies ON ' . db_prefix() . 'currencies.id = ' . db_prefix() . 'pricing_categories.default_currency',
     ];
// $additionalSelect = [];
$additionalSelect = [
    db_prefix() . 'pricing_categories.id',
    'default_currency',
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
        'data-target'             => '#pricing_category_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    $row[]              = $options .= icon_btn('sale/delete_pricing_category/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $output['aaData'][] = $row;
}
