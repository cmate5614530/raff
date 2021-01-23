<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    'name',
];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'machines_list';

$join = [
//    'LEFT JOIN ' . db_prefix() . 'warehouses ON ' . db_prefix() . 'warehouses.id = ' . db_prefix() . 'machines_list.export_to',
];

$additionalSelect = [
    db_prefix() . 'machines_list.id',


];

$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, [], $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    $row[] = '<span class="machine_name">'.$aRow['name'].'</span><input type="hidden" class="machine_id" value="'.$aRow['id'].'">';
    // $row[]              = icon_btn('#', 'calendar', 'btn-info');
    $row[]              = '<a href="#" class="btn btn-info btn-icon" onclick="get_event_by_machine(this)"><i class="fa fa-calendar"></i></a>';
    $output['aaData'][] = $row;
}
