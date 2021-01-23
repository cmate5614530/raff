<?php
defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [

    'packing_type',
    'box_quality',
    'box_type',
    'l_size',
    'w_size',
    'h_size',
    'volume',
    'pack_price',
    'price_per_item',
    'stock_qty'

];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'pack_list';

$join = [
   // 'LEFT JOIN ' . db_prefix() . 'package_group ON ' . db_prefix() . 'package_group.packing_id = ' . db_prefix() . 'pack_list.id',
];

$additionalSelect = [
    db_prefix() . 'pack_list.id'

];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, [], $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    
    $row = [];

    $subjectOutput = $aRow['packing_type'];
    $subjectOutput .= '<div class="row-options">';

    $subjectOutput .= '<a href="' . admin_url('warehouses/packing_list_manage/' . $aRow['id']) . '">' . _l('edit') . '</a>';
  
    // if (has_permission('contracts', '', 'delete')) {
        $subjectOutput .= ' | <a href="' . admin_url('warehouses/delete_packing_list/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';
    // }

    $subjectOutput .= '</div>';
    $row[] = $subjectOutput;

    // $default_pack_capacity = $this->ci->db->query('SELECT pack_capacity From '.db_prefix().'package_group WHERE packing_id='.$aRow['id'].' AND default_pack=1')->row();
    // if($default_pack_capacity == '')
    //     $row[] = '';
    // else 
    //     $row[] = $default_pack_capacity->pack_capacity;

    $row[] = $aRow['box_quality'];

    $row[] = $aRow['box_type'];

    $row[] = $aRow['l_size'];

    $row[] = $aRow['w_size'];

    $row[] = $aRow['h_size'];
    
    $row[] = $aRow['volume'];

    $row[] = $aRow['pack_price'];

    $row[] = $aRow['price_per_item'];

    $row[] = $aRow['stock_qty'];

    $output['aaData'][] = $row;
}
