<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    db_prefix() . 'stock_lists.product_code as product_code',
    'product_photo',
    db_prefix() .'stock_lists.product_name as product_name',
    db_prefix() .'package_group.pack_capacity as pack_capacity',
    db_prefix() .'pack_list.packing_type as packing_type',
    db_prefix() .'pack_list.volume as volume',
    db_prefix() . 'pricing_calculation.price as price'
    // 'product_list_price as price'

];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'stock_lists';

$join = [
   // 'LEFT JOIN ' . db_prefix() . 'package_group ON ' . db_prefix() . 'package_group.product_id = ' . db_prefix() . 'stock_lists.id',
    'LEFT JOIN ' . db_prefix() . 'package_group ON (' . db_prefix() . 'package_group.product_id = ' . db_prefix() . 'stock_lists.id AND '.db_prefix().'package_group.default_pack = 1)',
   'LEFT JOIN ' . db_prefix() . 'pack_list ON ' . db_prefix() . 'pack_list.id = ' . db_prefix() . 'package_group.packing_id',
   'LEFT JOIN ' . db_prefix() . 'stock_categories ON ' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category',
   'LEFT JOIN ' . db_prefix() . 'pricing_calculation ON ' . db_prefix() . 'pricing_calculation.rel_product_id = ' . db_prefix() . 'stock_lists.id',
];

$additionalSelect = [
    db_prefix() . 'stock_lists.id'
];

$where = ['AND ('.db_prefix().'package_group.default_pack = 1 OR '.db_prefix().'package_group.default_pack IS NULL)'];
// $where = [];
array_push($where,'AND  ('.db_prefix().'stock_categories.order_no = 3 OR '.db_prefix().'stock_categories.order_no = 2)');

$filter = [];

$this->ci->load->model('warehouses_model');
$pricing_categories  = $this->ci->warehouses_model->get_stock_categories_finished();
$pricing_categoriesIds = [];

foreach ($pricing_categories as $category) {
    if ($this->ci->input->post('products_' . $category['order_no'])) {
        array_push($pricing_categoriesIds, $category['order_no']);
    }
}
if (count($pricing_categoriesIds) > 0) {
    array_push($filter, 'AND tblstock_lists.category IN (' . implode(', ', $pricing_categoriesIds) . ')');
}
if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}
// array_push($where, 'AND '.db_prefix().'package_group.default_pack = 1');
// $where = ['AND '.db_prefix().'package_group.default_pack = 1'];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join ,$where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
// print_r($rResult);exit();
foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {

        $subjectOutput = '<input type = "hidden"  value="'.$aRow['id'].'"><span>'. $aRow['product_code'] . '</span>';
        $subjectOutput .= '<div class="row-options">';

        $subjectOutput .= '<a href="' . admin_url('products/manage_product_recipe/' . $aRow['id']) . '">' . _l('edit') . '</a>';
        // $subjectOutput .= ' | <a href="' . admin_url('products/delete_product_recipe/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';

        $subjectOutput .= '</div>';
        $row[] = $subjectOutput;

        if($aRow['product_photo'] != '')
            $row[] = '<a href="#"><img src="'.base_url($aRow['product_photo']).'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
        else
            $row[] = '<a href="#"><img src="'.base_url('assets/images/user-placeholder.jpg').'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
        
        $row[] = $aRow['product_name'];
        $row[] = $aRow['pack_capacity'];
        $row[] = $aRow['packing_type'];
        $row[] = $aRow['volume'];
        $row[] = $aRow['price'];
    }


    $output['aaData'][] = $row;
}
