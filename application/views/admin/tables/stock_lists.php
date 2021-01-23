<?php

defined('BASEPATH') or exit('No direct script access allowed');
if (has_permission('warehouse', '', 'stock_price_view')) 
    $aColumns = [
        'product_code',
        'product_photo',
        'product_name',
        db_prefix() . 'units.name',
        db_prefix() . 'stock_categories.name',
        'price',
        db_prefix() . 'currencies.name',
        'stock_level'
        ];
else
    $aColumns = [
        'product_code',
        'product_photo',
        'product_name',
        db_prefix() . 'units.name',
        db_prefix() . 'stock_categories.name',
        db_prefix() . 'currencies.name',
        'stock_level'
        ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'stock_lists';

$join = [
     'LEFT JOIN ' . db_prefix() . 'units ON ' . db_prefix() . 'units.unitid = ' . db_prefix() . 'stock_lists.unit',
     'LEFT JOIN ' . db_prefix() . 'stock_categories ON ' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category',
     'LEFT JOIN ' . db_prefix() . 'currencies ON ' . db_prefix() . 'currencies.id = ' . db_prefix() . 'stock_lists.currency_id',
     ];

$additionalSelect = [
    db_prefix() . 'stock_lists.id',
     'unit',
     'category',
     'pack_id'
    ];
// $where =['AND '.db_prefix().'stock_lists.created_by = '.get_staff_user_id().''];
$where =[];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];

        $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#stock_lists_modal',
        'data-id'                 => $aRow['id'],
        ];
        if ($aColumns[$i] == 'product_photo') {

            // $image = base_url().$aRow['product_photo'];

            //  // Read image path, convert to base64 encoding
            // $type = pathinfo($image, PATHINFO_EXTENSION);
            // $data = file_get_contents($image);

            // $imgData = base64_encode($data);

            //  // Format the image SRC:  data:{mime};base64,{data};
            // $src = 'data:image/' . $type . ';base64,'.$imgData;

            if($aRow['product_photo'] != '')
                $_data = '<a href="#"><img src="'.base_url($aRow['product_photo']).'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
            // <input type="hidden" value="'. $src.'">
            else
                $_data = '<a href="#"><img src="'.base_url('assets/images/user-placeholder.jpg').'" class="staff-profile-image-small" style="width:100px; height:100px"></a>';
        }
        
        if ($aColumns[$i] == 'product_name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        if($aColumns[$i] == 'stock_level') {
            $transfers = $this->ci->db->query('SELECT tbltransfer_lists.*, tblwarehouses.`order_no`FROM tbltransfer_lists LEFT JOIN tblwarehouses ON tblwarehouses.`id`=tbltransfer_lists.`transaction_from` WHERE stock_product_code ='.$aRow['id'])->result_array();
            $stock_level = 0;
            foreach ($transfers as $key => $value) {
                if($value['order_no'] == 1){
                    if($value['dispatch'] == 1 || $value['allocation'] == 1)
                    {
                        $stock_level = $stock_level - $value['transaction_qty'];
                    } else {
                        $stock_level = $stock_level + $value['transaction_qty'];
                    }
                } else {
                    if(empty($value['transaction_from']) && !empty($value['transaction_to'])){
                        $stock_level = $stock_level + $value['transaction_qty'];
                    } elseif(!empty($value['transaction_from']) && empty($value['transaction_to'])){
                        $stock_level = $stock_level - $value['transaction_qty'];
                    }
                        
                }
            }
            
            $_data = number_format($stock_level,2);
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);

    if(empty($aRow['pack_id']))
        $row[]              = $options .= icon_btn('warehouses/stock_list_delete/' . $aRow['id'], 'remove', 'btn-danger _delete');
    else
        $row[] = '';
    $output['aaData'][] = $row;
}
