<?php

defined('BASEPATH') or exit('No direct script access allowed');

$project_id = $this->ci->input->post('project_id');

$aColumns = [
    'number',
    db_prefix() . 'sale_phases.phase',
    get_sql_select_client_company(),
    'rel_quote_id',
    'shipping_type',
    'req_shipping_date',
    'general_notes',
    'total',
    'staff1.firstname as c_firstname',
    db_prefix() . 'estimates.datecreated',
    'staff2.firstname as u_firstname',
    db_prefix() . 'estimates.active'
    // 'total_tax',
    // 'YEAR(date) as year',
    // db_prefix() . 'projects.name as project_name',
    // '(SELECT GROUP_CONCAT(name SEPARATOR ",") FROM ' . db_prefix() . 'taggables JOIN ' . db_prefix() . 'tags ON ' . db_prefix() . 'taggables.tag_id = ' . db_prefix() . 'tags.id WHERE rel_id = ' . db_prefix() . 'estimates.id and rel_type="estimate" ORDER by tag_order ASC) as tags',
    // 'date',
    // 'expirydate',
    // 'reference_no',
    // db_prefix() . 'estimates.status',
    ];

$join = [
    'LEFT JOIN ' . db_prefix() . 'clients ON ' . db_prefix() . 'clients.userid = ' . db_prefix() . 'estimates.clientid',
    'LEFT JOIN ' . db_prefix() . 'currencies ON ' . db_prefix() . 'currencies.id = ' . db_prefix() . 'estimates.currency',
    'LEFT JOIN ' . db_prefix() . 'projects ON ' . db_prefix() . 'projects.id = ' . db_prefix() . 'estimates.project_id',
    'LEFT JOIN ' . db_prefix() . 'sale_phases ON ' . db_prefix() . 'sale_phases.order_no = ' . db_prefix() . 'estimates.sale_phase_id',
    'LEFT JOIN ' . db_prefix() . 'staff staff1 ON staff1.staffid = ' . db_prefix() . 'estimates.addedfrom',
    'LEFT JOIN ' . db_prefix() . 'staff staff2 ON staff2.staffid = ' . db_prefix() . 'estimates.updated_user',
];

$sIndexColumn = 'id';
$sTable       = db_prefix() . 'estimates';

$custom_fields = get_table_custom_fields('estimate');

foreach ($custom_fields as $key => $field) {
    $selectAs = (is_cf_date($field) ? 'date_picker_cvalue_' . $key : 'cvalue_' . $key);
    array_push($customFieldsColumns, $selectAs);
    array_push($aColumns, 'ctable_' . $key . '.value as ' . $selectAs);
    array_push($join, 'LEFT JOIN ' . db_prefix() . 'customfieldsvalues as ctable_' . $key . ' ON ' . db_prefix() . 'estimates.id = ctable_' . $key . '.relid AND ctable_' . $key . '.fieldto="' . $field['fieldto'] . '" AND ctable_' . $key . '.fieldid=' . $field['id']);
}

$where  = [' AND '.db_prefix().'estimates.active=1'];
$filter = [];

if ($this->ci->input->post('not_sent')) {
    array_push($filter, 'OR (sent= 0 AND ' . db_prefix() . 'estimates.status NOT IN (2,3,4))');
}
if ($this->ci->input->post('invoiced')) {
    array_push($filter, 'OR invoiceid IS NOT NULL');
}

if ($this->ci->input->post('not_invoiced')) {
    array_push($filter, 'OR invoiceid IS NULL');
}
$statuses  = $this->ci->estimates_model->get_statuses();
$statusIds = [];
foreach ($statuses as $status) {
    if ($this->ci->input->post('estimates_' . $status)) {
        array_push($statusIds, $status);
    }
}
if (count($statusIds) > 0) {
    array_push($filter, 'AND ' . db_prefix() . 'estimates.status IN (' . implode(', ', $statusIds) . ')');
}

$agents    = $this->ci->estimates_model->get_sale_agents();
$agentsIds = [];
foreach ($agents as $agent) {
    if ($this->ci->input->post('sale_agent_' . $agent['sale_agent'])) {
        array_push($agentsIds, $agent['sale_agent']);
    }
}
if (count($agentsIds) > 0) {
    array_push($filter, 'AND sale_agent IN (' . implode(', ', $agentsIds) . ')');
}

$years      = $this->ci->estimates_model->get_estimates_years();
$yearsArray = [];
foreach ($years as $year) {
    if ($this->ci->input->post('year_' . $year['year'])) {
        array_push($yearsArray, $year['year']);
    }
}
if (count($yearsArray) > 0) {
    array_push($filter, 'AND YEAR(date) IN (' . implode(', ', $yearsArray) . ')');
}

if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}

if ($clientid != '') {
    array_push($where, 'AND ' . db_prefix() . 'estimates.clientid=' . $this->ci->db->escape_str($clientid));
}

if ($project_id) {
    array_push($where, 'AND project_id=' . $this->ci->db->escape_str($project_id));
}

if (!has_permission('estimates', '', 'view')) {
    $userWhere = 'AND ' . get_estimates_where_sql_for_staff(get_staff_user_id());
    array_push($where, $userWhere);
}

$aColumns = hooks()->apply_filters('estimates_table_sql_columns', $aColumns);

// Fix for big queries. Some hosting have max_join_limit
if (count($custom_fields) > 4) {
    @$this->ci->db->query('SET SQL_BIG_SELECTS=1');
}

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, [
    db_prefix() . 'estimates.id',
    db_prefix() . 'estimates.clientid',
    db_prefix() . 'estimates.invoiceid',
    db_prefix() . 'currencies.name as currency_name',
    'project_id',
    'deleted_customer_name',
    'hash',
    db_prefix() . 'estimates.addedfrom',
    db_prefix() . 'estimates.updated_user',
    'staff1.lastname as c_lastname',
    'staff2.lastname as u_lastname',
]);

$output  = $result['output'];
$rResult = $result['rResult'];
foreach ($rResult as $aRow) {
    $row = [];

    $numberOutput = '';
    // If is from client area table or projects area request
    if (is_numeric($clientid) || $project_id) {
        $numberOutput = '<a href="' . admin_url('estimates/list_estimates/' . $aRow['id']) . '" target="_blank">' . format_estimate_number($aRow['id']) . '</a>';
    } else {
        $numberOutput = '<a href="#" onclick="init_estimate(' . $aRow['id'] . '); return false;">' . format_estimate_number($aRow['id']) . '</a>';
    }

    $numberOutput .= '<div class="row-options">';

    // $numberOutput .= '<a href="' . site_url('estimate/' . $aRow['id'] . '/' . $aRow['hash']) . '" target="_blank">' . _l('view') . '</a>';
    // if (has_permission('estimates', '', 'edit')) {
    //     $numberOutput .= ' | <a href="' . admin_url('estimates/estimate/' . $aRow['id']) . '">' . _l('edit') . '</a>';
    // }

    $numberOutput .= '<a href="' . site_url('sale_order/' . $aRow['id'] . '/' . $aRow['hash']) . '" target="_blank">' . _l('view') . '</a>';
    if (has_permission('estimates', '', 'edit')) {
        $numberOutput .= ' | <a href="' . admin_url('sale/sale_order/' . $aRow['id']) . '">' . _l('edit') . '</a>';
    }
    $numberOutput .= '</div>';

    $row[] = $numberOutput;

    

    // $row[] = $amount;
    $row[] = $aRow[db_prefix() . 'sale_phases.phase'];

    if (empty($aRow['deleted_customer_name'])) {
        $row[] = '<a href="' . admin_url('clients/client/' . $aRow['clientid']) . '">' . $aRow['company'] . '</a>';
    } else {
        $row[] = $aRow['deleted_customer_name'];
    }


    $numberOutput = '<a>' . format_proposal_number($aRow['rel_quote_id']) . '</a>';


    $row[] = $numberOutput;


    // $row[] = app_format_money($aRow['total_tax'], $aRow['currency_name']);
    $row[] = $aRow['shipping_type'];

    $row[] = _d($aRow['req_shipping_date']);

    $row[] = $aRow['general_notes'];

    if($aRow['currency_name'] != '')
        $amount = app_format_money($aRow['total'], $aRow['currency_name']);
    else
        $amount = $aRow['total'];

    // if ($aRow['invoiceid']) {
    //     $amount .= '<br /><span class="hide"> - </span><span class="text-success">' . _l('estimate_invoiced') . '</span>';
    // }

    $row[] = $amount;

    $row[] = '<a href="' . admin_url('staff/member/' . $aRow['addedfrom']) . '">' . $aRow['c_firstname']. ' '. $aRow['c_lastname'] . '</a>';

    $row[] = _d($aRow[db_prefix() . 'estimates.datecreated']);

    
    if(!empty($aRow['updated_user']))
    {
        $row[] = '<a href="' . admin_url('staff/member/' . $aRow['updated_user']) . '">' . $aRow['u_firstname']. ' '. $aRow['u_lastname'] . '</a>';
    }
    else
        $row[] = '';

    // $row[] = format_estimate_status($aRow[db_prefix() . 'estimates.status']);

    // Custom fields add values
    foreach ($customFieldsColumns as $customFieldColumn) {
        $row[] = (strpos($customFieldColumn, 'date_picker_') !== false ? _d($aRow[$customFieldColumn]) : $aRow[$customFieldColumn]);
    }

    $toggleActive = '<div class="onoffswitch" data-toggle="tooltip" data-title="' . _l('customer_active_inactive_help') . '">
    <input type="checkbox"' . ' data-switch-url="' . admin_url() . 'estimates/change_so_status" name="onoffswitch" class="onoffswitch-checkbox" id="' . $aRow['id'] . '" data-id="' . $aRow['id'] . '" ' . ($aRow[db_prefix().'estimates.active'] == 1 ? 'checked' : '') . ' onclick="so_refresh()">
    <label class="onoffswitch-label" for="' . $aRow['id'] . '"></label>
    </div>';

    $row[] = $toggleActive;

    $row['DT_RowClass'] = 'has-row-options';

    $row = hooks()->apply_filters('estimates_table_row_data', $row, $aRow);

    $output['aaData'][] = $row;
}

echo json_encode($output);
die();
