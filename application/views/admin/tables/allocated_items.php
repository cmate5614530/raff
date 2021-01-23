<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    db_prefix(). 'stock_lists.product_code',
    db_prefix() . 'allocated_items.product_name',
    'allocation_reason',
    db_prefix() .'stock_categories.name',
    'current_location',
    'stock_quantity',
    'created_user',
    'wo_no'
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'allocated_items';

$join = [
    'LEFT JOIN ' . db_prefix() . 'stock_lists ON ' . db_prefix() . 'stock_lists.id = ' . db_prefix() . 'allocated_items.allocation_product_code',
    'LEFT JOIN ' . db_prefix() . 'stock_categories ON ' . db_prefix() . 'stock_categories.cate_id = ' . db_prefix() . 'allocated_items.stock_category',
];

$additionalSelect = [
    db_prefix() . 'allocated_items.id',
    'allocation_product_code',
    'stock_category',
    'transfer_id'
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
            'data-target'             => '#allocated_items_modal',
            'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'allocation_product_code') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        if($aColumns[$i] == 'tblstock_lists.product_code')
        {
            $subjectOutput = $aRow['tblstock_lists.product_code'];
            $subjectOutput .= '<div class="row-options">';
            $subjectOutput .= '<a href="' . admin_url('warehouses/transfers_manage/' . $aRow['transfer_id']) . '">' . _l('edit') . '</a>';
            $subjectOutput .= ' | <a href="' . admin_url('warehouses/transfer_delete/' . $aRow['transfer_id']) . '" class="text-danger _delete">' . _l('release') . '</a>';
            $subjectOutput .= '</div>';
            $_data = $subjectOutput;
        }
        $row[] = $_data;
    }
    // $options = icon_btn('#' . $aRow['id'], '', 'fa fa-eye btn-default',$attributes);


    // $row[]              = $options .= icon_btn('allocated_items/delete/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $output['aaData'][] = $row;
}
