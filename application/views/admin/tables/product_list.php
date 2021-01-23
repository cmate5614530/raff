<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() . 'stock_lists.product_code as product_code',
    'product_photo',
    db_prefix() .'stock_lists.product_name as product_name',
    db_prefix() . 'barcode_list.barcode_id as barcode_no',
    db_prefix() .'package_group.pack_capacity as pack_capacity',
    db_prefix() .'pack_list.packing_type as packing_type',
    db_prefix() .'pack_list.volume as volume', 
    'stock_level',
    // 'price'
    'product_list_price'

];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'stock_lists';

$join = [
   'LEFT JOIN ' . db_prefix() . 'barcode_list ON ' . db_prefix() . 'barcode_list.products_code = ' . db_prefix() . 'stock_lists.id',
   'LEFT JOIN ' . db_prefix() . 'package_group ON (' . db_prefix() . 'package_group.product_id = ' . db_prefix() . 'stock_lists.id AND '.db_prefix().'package_group.default_pack = 1)',
   'LEFT JOIN ' . db_prefix() . 'pack_list ON ' . db_prefix() . 'pack_list.id = ' . db_prefix() . 'package_group.packing_id',
   'LEFT JOIN ' . db_prefix() . 'stock_categories ON ' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category',
];

$additionalSelect = [
    db_prefix() . 'stock_lists.id',
    
];

// $where =['AND '.db_prefix().'product_list.created_by = '.get_login_user_id().''];
$where = ['AND '.db_prefix().'stock_categories.order_no = 3 AND '.db_prefix().'package_group.default_pack = 1'];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join ,$where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
// print_r($rResult); exit();
foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {

        $row[] = '<input type = "hidden"  value="'.$aRow['id'].'"><span>'. $aRow['product_code'] . '</span>';

        if($aRow['product_photo'] != '')
            $row[] = '<a href="#"><img src="'.base_url($aRow['product_photo']).'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
        else
            $row[] = '<a href="#"><img src="'.base_url('assets/images/user-placeholder.jpg').'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
        
        $row[] = $aRow['product_name'];
        $row[] = $aRow['barcode_no'];
        $row[] = $aRow['pack_capacity'];
        $row[] = $aRow['packing_type'];
        $row[] = $aRow['volume'];
        $row[] = $aRow['stock_level'];
        // $row[] = $aRow['price'];
        $row[] = $aRow['product_list_price'];
    }
    $output['aaData'][] = $row;
}
