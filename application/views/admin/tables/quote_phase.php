<?php

defined('BASEPATH') or exit('No direct script access allowed');

$aColumns = [
    'phase',
    'order_no',

//     db_prefix() . 'currencies_exchange.name',
];
$sIndexColumn = 'id';
$sTable       = db_prefix() . 'quote_phase';

//$join = [];
$join = [
//     'LEFT JOIN ' . db_prefix() . 'currencies_exchange ON ' . db_prefix() . 'currencies_exchange.id = ' . db_prefix() . 'pricing_categories.default_currency',
];

$additionalSelect = [
    db_prefix() . 'quote_phase.id',

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
            'data-target'             => '#quote_phase_modal',
            'data-id'                 => $aRow['id'],
        ];

        if ($aColumns[$i] == 'name') {
            $_data = '<span class="name"><a href="#" ' . _attributes_to_string($attributes) . '>' . $_data . '</a></span>';
        }
        $row[] = $_data;
    }
    $options = icon_btn('#' . $aRow['id'], 'pencil-square-o', 'btn-default', $attributes);


    $row[]              = $options .= icon_btn('sale/delete_quote_phases/' . $aRow['id'], 'remove', 'btn-danger _delete');
    $output['aaData'][] = $row;
}
