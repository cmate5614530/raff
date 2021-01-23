<?php

defined('BASEPATH') or exit('No direct script access allowed');

function format_approval_status($status, $classes = '', $label = true)
{
    $id = $status;
    if ($status == 1) {
        $status      = _l('approval_need');
        $label_class = 'warning';
    } elseif ($status == 0) {
        $status      = _l('approval_not_need');
        $label_class = 'default';
    }
    if ($label == true) {
        return '<span class="label label-' . $label_class . ' ' . $classes . ' s-status proposal-status-' . $id . '">' . $status . '</span>';
    }

    return $status;
}
function format_purchase_phase($status, $data, $classes = '', $label = true)
{
    $id = $status;
    if ($status == 1) {
        $label_class = 'default';
    } elseif ($status == 2) {
        $label_class = 'info';
    } elseif ($status == 3) {
        $label_class = 'success';
    } elseif ($status == 4) {
        $label_class = 'warning';
    } elseif ($status == 5) {
        $label_class = 'danger';
    } elseif ($status == 6) {
        $label_class = 'danger';
    }

    if ($label == true) {
        return '<span class="label label-' . $label_class . ' ' . $classes . ' s-status proposal-status-' . $id . '">' . $data . '</span>';
    }

    return $status;
}