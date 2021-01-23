<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    'barcode_id',
    db_prefix() . 'stock_lists.product_code',
    db_prefix() .'barcode_list.product_name',
    'barcode_price',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'barcode_list';

 $join = [
     'LEFT JOIN ' . db_prefix() . 'stock_lists ON ' . db_prefix() . 'stock_lists.id = ' . db_prefix() . 'barcode_list.products_code',
     ];

$additionalSelect = [
    db_prefix() . 'barcode_list.id',
     'products_code',
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
        'data-target'             => '#barocde_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'barcode_id') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    $row[]              = $options .= icon_btn('warehouses/barcode_list_delete/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $output['aaData'][] = $row;
}
