<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'name',
    db_prefix().'units.active'
    ];
$sIndexColumn = 'unitid';
$sTable       = db_prefix() . 'units';
$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, [], [], [
    'unitid',
]);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns) - 1; $i++) {
        $_data = $aRow[$aColumns[$i]];
        $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#stock_unit_modal',
        'data-id'                 => $aRow['unitid'],
        ];

        if ($aColumns[$i] == 'name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['unitid'], 'pencil-square-o', 'btn-default', $attributes);
    // $row[] = $options .= icon_btn('warehouses/warehouse_delete/' . $aRow['unitid'], 'remove', 'btn-danger _delete');
    $row[] = $options;
    $toggleActive = '<div class="onoffswitch" data-toggle="tooltip" data-title="' . _l('customer_active_inactive_help') . '">
    <input type="checkbox"' . ' data-switch-url="' . admin_url() . 'warehouses/change_unit_status" name="onoffswitch" class="onoffswitch-checkbox" id="' . $aRow['unitid'] . '" data-id="' . $aRow['unitid'] . '" ' . ($aRow[db_prefix().'units.active'] == 1 ? 'checked' : '') . '>
    <label class="onoffswitch-label" for="' . $aRow['unitid'] . '"></label>
    </div>';

    // For exporting
    // $toggleActive .= '<span class="hide">' . ($aRow[db_prefix().'units.active'] == 1 ? _l('is_active_export') : _l('is_not_active_export')) . '</span>';

    $row[] = $toggleActive;

    $output['aaData'][] = $row;
}
