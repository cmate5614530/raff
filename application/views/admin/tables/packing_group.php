<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [

    'product_code',
    'tblpack_list.l_size,tblpack_list.w_size,tblpack_list.h_size',
    'default_pack',
    'pack_capacity'
    // db_prefix() . 'pack_list.pack_capacity as pack_capacity'

];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'package_group';

$join = [
   'LEFT JOIN ' . db_prefix() . 'pack_list ON ' . db_prefix() . 'pack_list.id = ' . db_prefix() . 'package_group.packing_id',
];

$additionalSelect = [
    db_prefix() . 'package_group.id',
    'packing_id'
];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, [], $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
// print_r($rResult);
foreach ($rResult as $aRow) {
    $row = [];
    $row[] = $aRow['product_code'];

    $row[] = $aRow['l_size'].'X'.$aRow['w_size'].'X'.$aRow['h_size'];

    $row[] = $aRow['default_pack'];
    $row[] = $aRow['pack_capacity'];
    $output['aaData'][] = $row;
}
