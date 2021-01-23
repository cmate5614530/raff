<?php

defined('BASEPATH') or exit('No direct script access allowed');

function app_init_admin_sidebar_menu_items()
{
    $CI = &get_instance();
    if (has_permission('dashboard', '', 'view')) 
        $CI->app_menu->add_sidebar_menu_item('dashboard', [
            'name'     => _l('als_dashboard'),
            'href'     => admin_url(),
            'position' => 1,
            'icon'     => 'fa fa-home',
        ]);
    // Warehouse

    $CI->app_menu->add_sidebar_menu_item('warehouse', [
        'collapse' => true,
        'name'     => _l('warehouse'),
        'position' => 5,
        'icon'     => 'fa fa-hdd-o',
    ]);
    if (has_permission('warehouse', '', 'stock_list'))   
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'stock_list',
            'name'     => _l('stock_list'),
            'href'     => admin_url('warehouses/stock_lists'),
            'position' => 5,
        ]);
    if (has_permission('warehouse', '', 'transfers'))  
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'transfers',
            'name'     => _l('transfers'),
            'href'     => admin_url('warehouses/transfers'),
            'position' => 10,
        ]);
    if (has_permission('warehouse', '', 'allocated_items')) 
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'allocated_items',
            'name'     => _l('allocated_items'),
            'href'     => admin_url('warehouses/allocated_items'),
            'position' => 15,
        ]);
    if (has_permission('warehouse', '', 'packing_list')) 
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'packing_list',
            'name'     => _l('packing_list'),
            'href'     => admin_url('warehouses/packing_list'),
            'position' => 20,
        ]);
    if (has_permission('warehouse', '', 'packing_group')) 
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'packing_group',
            'name'     => _l('packing_group'),
            'href'     => admin_url('warehouses/packing_group'),
            'position' => 25,
        ]);  
    if (has_permission('warehouse', '', 'purchase_receiving_bay'))
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'purchase_receiving_bay',
            'name'     => _l('purchase_receiving_bay'),
            'href'     => admin_url('warehouses/purchase_receiving_bay'),
            'position' => 30,
        ]);
    if (has_permission('warehouse', '', 'purchase_request'))
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'purchase_request',
            'name'     => _l('purchase_request'),
            'href'     => admin_url('warehouses/purchase_request'),
            'position' => 35,
        ]);  
    if (has_permission('warehouse', '', 'barcode_list'))
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'barcode_list',
            'name'     => _l('barcode_list'),
            'href'     => admin_url('warehouses/barcode_list'),
            'position' => 40,
        ]);
    if (has_permission('warehouse', '', 'dispatching_bay'))
        $CI->app_menu->add_sidebar_children_item('warehouse', [
            'slug'     => 'dispatching_bay',
            'name'     => _l('dispatching_bay'),
            'href'     => admin_url('warehouses/dispatching_bay_list'),
            'position' => 45,
        ]); 

    /*Purchase*/
    $CI->app_menu->add_sidebar_menu_item('purchase', [
            'collapse' => true,
            'name'     => _l('purchase'),
            'position' => 10,
            'icon'     => 'fa fa-shopping-bag',
        ]);
    if (has_permission('purchase', '', 'purchase_orders'))
        $CI->app_menu->add_sidebar_children_item('purchase', [
            'slug'     => 'purchase_orders',
            'name'     => _l('purchase_orders'),
            'href'     => admin_url('purchases/purchase_orders'),
            'position' => 5,
        ]);
    if (has_permission('purchase', '', 'pending_purchase_request'))
        $CI->app_menu->add_sidebar_children_item('purchase', [
            'slug'     => 'pending_purchase_request',
            'name'     => _l('pending_purchase_request'),
            'href'     => admin_url('purchases/pending_purchase_request'),
            'position' => 10,
        ]);


    /*Finance*/
    $CI->app_menu->add_sidebar_menu_item('finance', [
            'collapse' => true,
            'name'     => _l('finance'),
            'position' => 15,
            'icon'     => 'fa fa-money',
        ]);

        // $CI->app_menu->add_sidebar_children_item('finance', [
        //     'slug'     => 'currency_exchange_rate',
        //     'name'     => _l('currency_exchange_rate'),
        //     'href'     => admin_url('finances/currency_exchange_rate'),
        //     'position' => 5,
        // ]);
    if (has_permission('finance', '', 'currency'))
        $CI->app_menu->add_sidebar_children_item('finance', [
            'slug'     => 'currency',
            'name'     => _l('currency'),
            'href'     => admin_url('currencies'),
            'position' => 5,
        ]);
    if (has_permission('finance', '', 'ready_to_invoice'))
        $CI->app_menu->add_sidebar_children_item('finance', [
            'slug'     => 'ready_to_invoice',
            'name'     => _l('ready_to_invoice'),
            'href'     => admin_url('finances/ready_to_invoice'),
            'position' => 10,
        ]);


    if (has_permission('customers', '', 'view')
        || (have_assigned_customers()
        || (!have_assigned_customers() && has_permission('customers', '', 'create')))) {
        $CI->app_menu->add_sidebar_menu_item('customers', [
            'name'     => _l('accounts'),
            'href'     => admin_url('clients'),
            'position' => 25,
            'icon'     => 'fa fa-user-o',
        ]);
    }
    // product
    $CI->app_menu->add_sidebar_menu_item('products', [
            'collapse' => true,
            'name'     => _l('products'),
            'position' => 20,
            'icon'     => 'fa fa-product-hunt',
        ]);
    if (has_permission('products', '', 'product_list'))
        $CI->app_menu->add_sidebar_children_item('products', [
            'slug'     => 'product_list',
            'name'     => _l('product_list'),
            'href'     => admin_url('products/product_list'),
            'position' => 5,
        ]);
    if (has_permission('products', '', 'product_recipe'))
        $CI->app_menu->add_sidebar_children_item('products', [
            'slug'     => 'product_recipe',
            'name'     => _l('product_recipe'),
            'href'     => admin_url('products/product_recipe'),
            'position' => 10,
        ]);

    // manufacturing settings
    $CI->app_menu->add_sidebar_menu_item('manufacturing_settings', [
        'collapse' => true,
        'name'     => _l('manufacturing_settings'),
        'position' => 25,
        'icon'     => 'fa fa-cogs',
    ]);
    if (has_permission('manufacturing_settings', '', 'list_of_machinery'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'list_of_machinery',
            'name'     => _l('list_of_machinery'),
            'href'     => admin_url('manufacturing_settings/list_of_machinery'),
            'position' => 2,
        ]);
    if (has_permission('manufacturing_settings', '', 'list_of_moulds'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'list_of_moulds',
            'name'     => _l('list_of_moulds'),
            'href'     => admin_url('manufacturing_settings/list_of_moulds'),
            'position' => 7,
        ]);
    if (has_permission('manufacturing_settings', '', 'moulds_suitability'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'moulds_suitability',
            'name'     => _l('moulds_of_suitability'),
            'href'     => admin_url('manufacturing_settings/moulds_suitability'),
            'position' => 10,
        ]);
    if (has_permission('manufacturing_settings', '', 'energy_prices'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'energy_prices',
            'name'     => _l('energy_prices'),
            'href'     => admin_url('manufacturing_settings/energy_prices'),
            'position' => 15,
        ]);
    if (has_permission('manufacturing_settings', '', 'work_hours_capacity'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'work_hours_capacity',
            'name'     => _l('work_hours_capacity'),
            'href'     => admin_url('manufacturing_settings/work_hours_capacity'),
            'position' => 20,
        ]); 
    if (has_permission('manufacturing_settings', '', 'installation'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'installation',
            'name'     => _l('installation'),
            'href'     => admin_url('manufacturing_settings/installation_process'),
            'position' => 25,
        ]);
    if (has_permission('manufacturing_settings', '', 'op_cost_per_sec'))
        $CI->app_menu->add_sidebar_children_item('manufacturing_settings', [
            'slug'     => 'op_cost_per_sec',
            'name'     => _l('op_cost_per_sec'),
            'href'     => admin_url('manufacturing_settings/op_cost_per_sec'),
            'position' => 30,
        ]);

    // Sales 

    $CI->app_menu->add_sidebar_menu_item('sales', [
            'collapse' => true,
            'name'     => _l('als_sales'),
            'position' => 30,
            'icon'     => 'fa fa-balance-scale',
        ]);

    // if ((has_permission('proposals', '', 'view') || has_permission('proposals', '', 'view_own')) || has_permission('sales', '', 'quotation/offer') || (staff_has_assigned_proposals() && get_option('allow_staff_view_proposals_assigned') == 1)) {
    if (has_permission('sales', '', 'quotation/offer')) {
        $CI->app_menu->add_sidebar_children_item('sales', [
                'slug'     => 'proposals',
                'name'     => _l('quotation/offer'),
                'href'     => admin_url('sale/quotation_list'),
                // 'href'     => admin_url('proposals'),
                'position' => 5,
        ]);
    }
    // if ((has_permission('proposals', '', 'view') || has_permission('proposals', '', 'view_own')) || has_permission('sales', '', 'quotation_approval') || (staff_has_assigned_proposals() && get_option('allow_staff_view_proposals_assigned') == 1)) {
    if (has_permission('sales', '', 'quotation_approval')) {
        $CI->app_menu->add_sidebar_children_item('sales', [
                'slug'     => 'quotation_approval',
                'name'     => _l('quotation_approval'),
                'href'     => admin_url('sale/quotation_approval_list'),
                'position' => 5,
        ]);
    }

    // if ((has_permission('estimates', '', 'view') || has_permission('estimates', '', 'view_own')) || has_permission('sales', '', 'sale_order') || (staff_has_assigned_estimates() && get_option('allow_staff_view_estimates_assigned') == 1)) {
    if (has_permission('sales', '', 'sale_order')) {
        $CI->app_menu->add_sidebar_children_item('sales', [
                'slug'     => 'estimates',
                'name'     => _l('sale_order'),
                // 'href'     => admin_url('estimates'),
                'href'     => admin_url('sale/sale_order_list'),
                'position' => 10,
        ]);
    }

    // if ((has_permission('invoices', '', 'view') || has_permission('invoices', '', 'view_own'))
    //      || (staff_has_assigned_invoices() && get_option('allow_staff_view_invoices_assigned') == 1)) {
    //     $CI->app_menu->add_sidebar_children_item('sales', [
    //             'slug'     => 'invoices',
    //             'name'     => _l('invoices'),
    //             'href'     => admin_url('invoices'),
    //             'position' => 15,
    //     ]);
    // }

    // if (has_permission('payments', '', 'view') || has_permission('invoices', '', 'view_own')
    //        || (get_option('allow_staff_view_invoices_assigned') == 1 && staff_has_assigned_invoices())) {
    //     $CI->app_menu->add_sidebar_children_item('sales', [
    //             'slug'     => 'payments',
    //             'name'     => _l('payments'),
    //             'href'     => admin_url('payments'),
    //             'position' => 20,
    //     ]);
    // }

    // if (has_permission('credit_notes', '', 'view') || has_permission('credit_notes', '', 'view_own')) {
    //     $CI->app_menu->add_sidebar_children_item('sales', [
    //             'slug'     => 'credit_notes',
    //             'name'     => _l('credit_notes'),
    //             'href'     => admin_url('credit_notes'),
    //             'position' => 25,
    //     ]);
    // }

    // if (has_permission('items', '', 'view')) {
    //     $CI->app_menu->add_sidebar_children_item('sales', [
    //             'slug'     => 'items',
    //             'name'     => _l('items'),
    //             'href'     => admin_url('invoice_items'),
    //             'position' => 30,
    //     ]);
    // }

    // Planing

    $CI->app_menu->add_sidebar_menu_item('planning', [
            'collapse' => true,
            'name'     => _l('als_planning'),
            'position' => 35,
            'icon'     => 'fa fa-tasks',
        ]);

    // if ((has_permission('estimates', '', 'view') || has_permission('estimates', '', 'view_own')) || has_permission('planning', '', 'pending_sale_order') || (staff_has_assigned_estimates() && get_option('allow_staff_view_estimates_assigned') == 1))
    if (has_permission('planning', '', 'pending_sale_order'))

        $CI->app_menu->add_sidebar_children_item('planning', [
                'slug'     => 'pending_sale_order',
                'name'     => _l('pending_sale_order'),
                'href'     => admin_url('planning/pending_sale_order'),
                'position' => 5,
        ]);
    
    // if ((has_permission('invoices', '', 'view') || has_permission('invoices', '', 'view_own')) || has_permission('planning', '', 'work_orders') || (staff_has_assigned_invoices() && get_option('allow_staff_view_invoices_assigned') == 1))
    if (has_permission('planning', '', 'work_orders'))
    
        $CI->app_menu->add_sidebar_children_item('planning', [
                'slug'     => 'work_orders',
                'name'     => _l('work_orders'),
                // 'href'     => admin_url('invoices'),
                'href'     => admin_url('planning/work_orders_list'),
                'position' => 10,
        ]);

    $CI->app_menu->add_sidebar_menu_item('production', [
            'collapse' => true,
            'name'     => _l('als_production'),
            'position' => 40,
            'icon'     => 'fa fa-industry',
        ]);

    // if ((has_permission('invoices', '', 'view') || has_permission('invoices', '', 'view_own')) || has_permission('production', '', 'production_work_order') || (staff_has_assigned_invoices() && get_option('allow_staff_view_invoices_assigned') == 1))
    if (has_permission('production', '', 'production_work_order'))

        $CI->app_menu->add_sidebar_children_item('production', [
                'slug'     => 'production_work_order',
                'name'     => _l('production_work_order'),
                'href'     => admin_url('production/production_work_order'),
                // 'href'     => admin_url('invoices'),
                'position' => 5,
        ]);
    

    if (has_permission('production', '', 'production_machine_list'))
        $CI->app_menu->add_sidebar_children_item('production', [
                'slug'     => 'production_machine_list',
                'name'     => _l('production_machine_list'),
                'href'     => admin_url('production/production_machine_list'),
                'position' => 10,
        ]);

    $CI->app_menu->add_sidebar_menu_item('installation', [
            'collapse' => true,
            'name'     => _l('installation'),
            'position' => 45,
            'icon'     => 'fa fa fa-window-restore',
        ]);

    if(has_permission('installation','','installation_work_order'))
        $CI->app_menu->add_sidebar_children_item('installation', [
                'slug'     => 'installation_work_order',
                'name'     => _l('installation_work_order'),
                'href'     => admin_url('installation/installation_work_order_list'),
                // 'href'     => admin_url('invoices'),
                'position' => 5,
        ]);
    

    // if (has_permission('subscriptions', '', 'view') || has_permission('subscriptions', '', 'view_own')) {
    //     $CI->app_menu->add_sidebar_menu_item('subscriptions', [
    //             'name'     => _l('subscriptions'),
    //             'href'     => admin_url('subscriptions'),
    //             'icon'     => 'fa fa-repeat',
    //             'position' => 15,
    //     ]);
    // }

    // if (has_permission('expenses', '', 'view') || has_permission('expenses', '', 'view_own')) {
    //     $CI->app_menu->add_sidebar_menu_item('expenses', [
    //             'name'     => _l('expenses'),
    //             'href'     => admin_url('expenses'),
    //             'icon'     => 'fa fa-file-text-o',
    //             'position' => 20,
    //     ]);
    // }

    // if (has_permission('contracts', '', 'view') || has_permission('contracts', '', 'view_own')) {
    //     $CI->app_menu->add_sidebar_menu_item('contracts', [
    //             'name'     => _l('contracts'),
    //             'href'     => admin_url('contracts'),
    //             'icon'     => 'fa fa-file',
    //             'position' => 25,
    //     ]);
    // }

    // $CI->app_menu->add_sidebar_menu_item('projects', [
    //             'name'     => _l('projects'),
    //             'href'     => admin_url('projects'),
    //             'icon'     => 'fa fa-bars',
    //             'position' => 30,
    //     ]);

    // $CI->app_menu->add_sidebar_menu_item('tasks', [
    //             'name'     => _l('als_tasks'),
    //             'href'     => admin_url('tasks'),
    //             'icon'     => 'fa fa-tasks',
    //             'position' => 35,
    //     ]);

    // if ((!is_staff_member() && get_option('access_tickets_to_none_staff_members') == 1) || is_staff_member()) {
    //     $CI->app_menu->add_sidebar_menu_item('support', [
    //             'name'     => _l('support'),
    //             'href'     => admin_url('tickets'),
    //             'icon'     => 'fa fa-ticket',
    //             'position' => 40,
    //     ]);
    // }

    // if (is_staff_member()) {
    //     $CI->app_menu->add_sidebar_menu_item('leads', [
    //             'name'     => _l('als_leads'),
    //             'href'     => admin_url('leads'),
    //             'icon'     => 'fa fa-tty',
    //             'position' => 45,
    //     ]);
    // }

    // if (has_permission('knowledge_base', '', 'view')) {
    //     $CI->app_menu->add_sidebar_menu_item('knowledge-base', [
    //             'name'     => _l('als_kb'),
    //             'href'     => admin_url('knowledge_base'),
    //             'icon'     => 'fa fa-folder-open-o',
    //             'position' => 50,
    //     ]);
    // }

    // // Utilities
    // $CI->app_menu->add_sidebar_menu_item('utilities', [
    //         'collapse' => true,
    //         'name'     => _l('als_utilities'),
    //         'position' => 55,
    //         'icon'     => 'fa fa-cogs',
    //     ]);

    // $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'media',
    //             'name'     => _l('als_media'),
    //             'href'     => admin_url('utilities/media'),
    //             'position' => 5,
    //     ]);

    // if (has_permission('bulk_pdf_exporter', '', 'view')) {
    //     $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'bulk-pdf-exporter',
    //             'name'     => _l('bulk_pdf_exporter'),
    //             'href'     => admin_url('utilities/bulk_pdf_exporter'),
    //             'position' => 10,
    //     ]);
    // }

    // $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'calendar',
    //             'name'     => _l('als_calendar_submenu'),
    //             'href'     => admin_url('utilities/calendar'),
    //             'position' => 15,
    //     ]);


    // if (is_admin()) {
    //     $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'announcements',
    //             'name'     => _l('als_announcements_submenu'),
    //             'href'     => admin_url('announcements'),
    //             'position' => 20,
    //     ]);

    //     $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'activity-log',
    //             'name'     => _l('als_activity_log_submenu'),
    //             'href'     => admin_url('utilities/activity_log'),
    //             'position' => 25,
    //     ]);

    //     $CI->app_menu->add_sidebar_children_item('utilities', [
    //             'slug'     => 'ticket-pipe-log',
    //             'name'     => _l('ticket_pipe_log'),
    //             'href'     => admin_url('utilities/pipe_log'),
    //             'position' => 30,
    //     ]);
    // }

    if (has_permission('reports', '', 'view')) {
        $CI->app_menu->add_sidebar_menu_item('reports', [
                'collapse' => true,
                'name'     => _l('als_reports'),
                'href'     => admin_url('reports'),
                'icon'     => 'fa fa-area-chart',
                'position' => 60,
        ]);
            $CI->app_menu->add_sidebar_children_item('reports', [
                    'slug'     => 'profit-reports',
                    'name'     => _l('als_reports_profit_submenu'),
                    'href'     => admin_url('reports/profit'),
                    'position' => 5,
            ]);
            $CI->app_menu->add_sidebar_children_item('reports', [
                    'slug'     => 'sale-reports',
                    'name'     => _l('als_reports_sale_submenu'),
                    'href'     => admin_url('reports/sale'),
                    'position' => 10,
            ]);
            $CI->app_menu->add_sidebar_children_item('reports', [
                    'slug'     => 'work_orders-reports',
                    'name'     => _l('als_reports_work_orders_submenu'),
                    'href'     => admin_url('reports/work_orders'),
                    'position' => 15,
            ]);
            $CI->app_menu->add_sidebar_children_item('reports', [
                    'slug'     => 'warehouse-reports',
                    'name'     => _l('als_reports_warehouse_submenu'),
                    'href'     => admin_url('reports/warehouse'),
                    'position' => 15,
            ]);

            // $CI->app_menu->add_sidebar_children_item('reports', [
            //         'slug'     => 'sales-reports',
            //         'name'     => _l('als_reports_sales_submenu'),
            //         'href'     => admin_url('reports/sales'),
            //         'position' => 5,
            // ]);
            // $CI->app_menu->add_sidebar_children_item('reports', [
            //         'slug'     => 'expenses-reports',
            //         'name'     => _l('als_reports_expenses'),
            //         'href'     => admin_url('reports/expenses'),
            //         'position' => 10,
            // ]);
            // $CI->app_menu->add_sidebar_children_item('reports', [
            //         'slug'     => 'expenses-vs-income-reports',
            //         'name'     => _l('als_expenses_vs_income'),
            //         'href'     => admin_url('reports/expenses_vs_income'),
            //         'position' => 15,
            // ]);
            // $CI->app_menu->add_sidebar_children_item('reports', [
            //         'slug'     => 'leads-reports',
            //         'name'     => _l('als_reports_leads_submenu'),
            //         'href'     => admin_url('reports/leads'),
            //         'position' => 20,
            // ]);

            // if (is_admin()) {
            //     $CI->app_menu->add_sidebar_children_item('reports', [
            //             'slug'     => 'timesheets-reports',
            //             'name'     => _l('timesheets_overview'),
            //             'href'     => admin_url('staff/timesheets?view=all'),
            //             'position' => 25,
            //     ]);
            // }

            // $CI->app_menu->add_sidebar_children_item('reports', [
            //             'slug'     => 'knowledge-base-reports',
            //             'name'     => _l('als_kb_articles_submenu'),
            //             'href'     => admin_url('reports/knowledge_base_articles'),
            //             'position' => 30,
            //     ]);
    }

    // Setup menu
    if (has_permission('staff', '', 'view')) {
        $CI->app_menu->add_setup_menu_item('staff', [
                    'name'     => _l('als_staff'),
                    'href'     => admin_url('staff'),
                    'position' => 5,
            ]);
    }

    if (is_admin()) {
        // $CI->app_menu->add_setup_menu_item('customers', [
        //             'collapse' => true,
        //             'name'     => _l('clients'),
        //             'position' => 10,
        //     ]);

        // $CI->app_menu->add_setup_children_item('customers', [
        //             'slug'     => 'customer-groups',
        //             'name'     => _l('customer_groups'),
        //             'href'     => admin_url('clients/groups'),
        //             'position' => 5,
        //     ]);
        // $CI->app_menu->add_setup_menu_item('support', [
        //             'collapse' => true,
        //             'name'     => _l('support'),
        //             'position' => 15,
        //     ]);

        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'departments',
        //             'name'     => _l('acs_departments'),
        //             'href'     => admin_url('departments'),
        //             'position' => 5,
        //     ]);
        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'tickets-predefined-replies',
        //             'name'     => _l('acs_ticket_predefined_replies_submenu'),
        //             'href'     => admin_url('tickets/predefined_replies'),
        //             'position' => 10,
        //     ]);
        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'tickets-priorities',
        //             'name'     => _l('acs_ticket_priority_submenu'),
        //             'href'     => admin_url('tickets/priorities'),
        //             'position' => 15,
        //     ]);
        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'tickets-statuses',
        //             'name'     => _l('acs_ticket_statuses_submenu'),
        //             'href'     => admin_url('tickets/statuses'),
        //             'position' => 20,
        //     ]);

        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'tickets-services',
        //             'name'     => _l('acs_ticket_services_submenu'),
        //             'href'     => admin_url('tickets/services'),
        //             'position' => 25,
        //     ]);
        // $CI->app_menu->add_setup_children_item('support', [
        //             'slug'     => 'tickets-spam-filters',
        //             'name'     => _l('spam_filters'),
        //             'href'     => admin_url('spam_filters/view/tickets'),
        //             'position' => 30,
        //     ]);

        // $CI->app_menu->add_setup_menu_item('leads', [
        //             'collapse' => true,
        //             'name'     => _l('acs_leads'),
        //             'position' => 20,
        //     ]);
        // $CI->app_menu->add_setup_children_item('leads', [
        //             'slug'     => 'leads-sources',
        //             'name'     => _l('acs_leads_sources_submenu'),
        //             'href'     => admin_url('leads/sources'),
        //             'position' => 5,
        //     ]);
        // $CI->app_menu->add_setup_children_item('leads', [
        //             'slug'     => 'leads-statuses',
        //             'name'     => _l('acs_leads_statuses_submenu'),
        //             'href'     => admin_url('leads/statuses'),
        //             'position' => 10,
        //     ]);
        // $CI->app_menu->add_setup_children_item('leads', [
        //             'slug'     => 'leads-email-integration',
        //             'name'     => _l('leads_email_integration'),
        //             'href'     => admin_url('leads/email_integration'),
        //             'position' => 15,
        //     ]);
        // $CI->app_menu->add_setup_children_item('leads', [
        //             'slug'     => 'web-to-lead',
        //             'name'     => _l('web_to_lead'),
        //             'href'     => admin_url('leads/forms'),
        //             'position' => 20,
        //     ]);

        $CI->app_menu->add_setup_menu_item('finance', [
                    'collapse' => true,
                    'name'     => _l('acs_finance'),
                    'position' => 25,
            ]);
        $CI->app_menu->add_setup_children_item('finance', [
                    'slug'     => 'taxes',
                    'name'     => _l('acs_sales_taxes_submenu'),
                    'href'     => admin_url('taxes'),
                    'position' => 5,
            ]);
        // $CI->app_menu->add_setup_children_item('finance', [
        //             'slug'     => 'currencies',
        //             'name'     => _l('acs_sales_currencies_submenu'),
        //             'href'     => admin_url('currencies'),
        //             'position' => 10,
        //     ]);
        // $CI->app_menu->add_setup_children_item('finance', [
        //             'slug'     => 'payment-modes',
        //             'name'     => _l('acs_sales_payment_modes_submenu'),
        //             'href'     => admin_url('paymentmodes'),
        //             'position' => 15,
        //     ]);
        // $CI->app_menu->add_setup_children_item('finance', [
        //             'slug'     => 'expenses-categories',
        //             'name'     => _l('acs_expense_categories'),
        //             'href'     => admin_url('expenses/categories'),
        //             'position' => 20,
        //     ]);

        // $CI->app_menu->add_setup_menu_item('contracts', [
        //             'collapse' => true,
        //             'name'     => _l('acs_contracts'),
        //             'position' => 30,
        //     ]);
        // $CI->app_menu->add_setup_children_item('contracts', [
        //             'slug'     => 'contracts-types',
        //             'name'     => _l('acs_contract_types'),
        //             'href'     => admin_url('contracts/types'),
        //             'position' => 5,
        //     ]);

        $modules_name = _l('modules');

        if ($modulesNeedsUpgrade = $CI->app_modules->number_of_modules_that_require_database_upgrade()) {
            $modules_name .= '<span class="badge menu-badge bg-warning">' . $modulesNeedsUpgrade . '</span>';
        }

        $CI->app_menu->add_setup_menu_item('modules', [
                    'href'     => admin_url('modules'),
                    'name'     => $modules_name,
                    'position' => 35,
            ]);

        $CI->app_menu->add_setup_menu_item('custom-fields', [
                    'href'     => admin_url('custom_fields'),
                    'name'     => _l('asc_custom_fields'),
                    'position' => 45,
            ]);

        // $CI->app_menu->add_setup_menu_item('gdpr', [
        //             'href'     => admin_url('gdpr'),
        //             'name'     => _l('gdpr_short'),
        //             'position' => 50,
        //     ]);

        $CI->app_menu->add_setup_menu_item('roles', [
                    'href'     => admin_url('roles'),
                    'name'     => _l('acs_roles'),
                    'position' => 55,
            ]);

/*             $CI->app_menu->add_setup_menu_item('api', [
                          'href'     => admin_url('api'),
                          'name'     => 'API',
                          'position' => 65,
                  ]);*/

        //Accounts
        $CI->app_menu->add_setup_menu_item('accounts', [
            'collapse' => true,
            'name'     => _l('accounts'),
            'position' => 70,
        ]);          

        $CI->app_menu->add_setup_children_item('accounts', [
                'slug'     => 'account_type',
                'name'     => _l('account_type'),
                'href'     => admin_url('clients/groups'),
                'position' => 5,
        ]);   

        //Production
        $CI->app_menu->add_setup_menu_item('production', [
            'collapse' => true,
            'name'     => _l('production'),
            'position' => 75,
        ]);

        $CI->app_menu->add_setup_children_item('production', [
                'slug'     => 'work_order_phases',
                'name'     => _l('work_order_phases'),
                'href'     => admin_url('production/work_order_phases'),
                'position' => 5,
        ]);

        $CI->app_menu->add_setup_children_item('production', [
                'slug'     => 'work_order_email',
                'name'     => _l('work_order_email'),
                'href'     => admin_url('production/work_order_email'),
                'position' => 10,
        ]);      

        // Purchase
        $CI->app_menu->add_setup_menu_item('purchase', [
            'collapse' => true,
            'name'     => _l('purchase'),
            'position' => 80,
        ]);

        $CI->app_menu->add_setup_children_item('purchase', [
                'slug'     => 'purchase_orders_phases',
                'name'     => _l('purchase_order_phases'),
                'href'     => admin_url('purchases/purchase_orders_phases'),
                'position' => 5,
        ]);

        $CI->app_menu->add_setup_children_item('purchase', [
                'slug'     => 'purchase_email',
                'name'     => _l('purchase_email'),
                'href'     => admin_url('purchases/purchase_email'),
                'position' => 5,
        ]);    

        // Warehouse Material
        $CI->app_menu->add_setup_menu_item('warehouse', [
            'collapse' => true,
            'name'     => _l('warehouse'),
            'position' => 85,
        ]);

        $CI->app_menu->add_setup_children_item('warehouse', [
                'slug'     => 'warehouses',
                'name'     => _l('warehouses'),
                'href'     => admin_url('warehouses/warehouse'),
                'position' => 5,
        ]);

        $CI->app_menu->add_setup_children_item('warehouse', [
                'slug'     => 'stock_categories',
                'name'     => _l('stock_categories'),
                'href'     => admin_url('warehouses/stock_categories'),
                'position' => 10,
        ]);

        $CI->app_menu->add_setup_children_item('warehouse', [
                'slug'     => 'stock_units',
                'name'     => _l('stock_units'),
                'href'     => admin_url('warehouses/stock_units'),
                'position' => 15,
        ]);

        $CI->app_menu->add_setup_children_item('warehouse', [
                'slug'     => 'stock_level_warning',
                'name'     => _l('stock_level_warning'),
                'href'     => admin_url('warehouses/stock_level_warning'),
                'position' => 20,
        ]);

        // Sale
        $CI->app_menu->add_setup_menu_item('sale', [
            'collapse' => true,
            'name'     => _l('sale'),
            'position' => 90,
        ]);

        $CI->app_menu->add_setup_children_item('sale', [
                'slug'     => 'pricing_categories',
                'name'     => _l('pricing_categories'),
                'href'     => admin_url('sale/pricing_categories'),
                'position' => 5,
        ]);

        $CI->app_menu->add_setup_children_item('sale', [
                'slug'     => 'sale_phases',
                'name'     => _l('sale_phases'),
                'href'     => admin_url('sale/sale_phases'),
                'position' => 10,
        ]);
        $CI->app_menu->add_setup_children_item('sale', [
                'slug'     => 'quote_phases',
                'name'     => _l('quote_phases'),
                'href'     => admin_url('sale/quote_phases'),
                'position' => 15,
        ]);
        $CI->app_menu->add_setup_children_item('sale', [
                'slug'     => 'quotation_approval_email',
                'name'     => _l('quotation_approval_email'),
                'href'     => admin_url('sale/quotation_approval_email'),
                'position' => 20,
        ]);
        $CI->app_menu->add_setup_children_item('sale', [
                'slug'     => 'sale_order_email',
                'name'     => _l('sale_order_email'),
                'href'     => admin_url('sale/sale_order_email'),
                'position' => 25,
        ]);
        // User log
        $CI->app_menu->add_setup_menu_item('user_logs', [
            'name'     => _l('user_logs'),
            'href'     => admin_url('utilities/activity_log'),
            'position' => 95,
        ]);

        // Main Menu
        // $CI->app_menu->add_setup_menu_item('menu_setup', [
        //     'collapse' => true,
        //     'name'     => _l('menu_setup'),
        //     'position' => 100,
        // ]);

        // $CI->app_menu->add_setup_children_item('menu_setup', [
        //         'slug'     => 'main_menu',
        //         'name'     => _l('main_menu'),
        //         'href'     => admin_url('menu_setup/main_menu'),
        //         'position' => 5,
        // ]);

        // $CI->app_menu->add_setup_children_item('menu_setup', [
        //         'slug'     => 'setup_menu',
        //         'name'     => _l('setup_menu'),
        //         'href'     => admin_url('menu_setup/setup_menu'),
        //         'position' => 5,
        // ]);

        // // theme style
        // $CI->app_menu->add_setup_menu_item('theme_style', [
        //     'name'     => _l('theme_style'),
        //     'href'     => admin_url('theme_style'),
        //     'position' => 105,
        // ]);
        
    }

    if (has_permission('settings', '', 'view')) {
        $CI->app_menu->add_setup_menu_item('settings', [
                    'href'     => admin_url('settings'),
                    'name'     => _l('acs_settings'),
                    'position' => 200,
            ]);
    }

    if (has_permission('email_templates', '', 'view')) {
        $CI->app_menu->add_setup_menu_item('email-templates', [
                    'href'     => admin_url('emails'),
                    'name'     => _l('acs_email_templates'),
                    'position' => 40,
            ]);
    }
}
