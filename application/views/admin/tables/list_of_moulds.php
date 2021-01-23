<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'mould_name',
    'mould_cavity',
    'active',
    ];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'moulds';
$result       = data_tables_init($aColumns, $sIndexColumn, $sTable, [], [], [
    'id',
]);
$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];

        $attributes = [
        'data-toggle'             => 'modal',
        'data-target'             => '#mould_cavity_modal',
        'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'mould_name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        else if ($aColumns[$i] == "mould_cavity"){
            $_data = '<span class="cavity">' . $_data . '</span>';
        }
        else if($aColumns[$i] == 'active'){
             $toggleActive = '<div class="onoffswitch" data-toggle="tooltip" data-title="' . _l('customer_active_inactive_help') . '">
            <input type="checkbox"' . ' data-switch-url="' . admin_url() . 'manufacturing_settings/change_mould_status" name="onoffswitch" class="onoffswitch-checkbox" id="' . $aRow['id'] . '" data-id="' . $aRow['id'] . '" ' . ($aRow['active'] == 1 ? 'checked' : '') . '>
            <label class="onoffswitch-label" for="' . $aRow['id'] . '"></label>
            </div>';
            $_data = $toggleActive;
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    $row[]              = $options;
    $output['aaData'][] = $row;
}
