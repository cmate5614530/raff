<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Production extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('production_model');
        $this->load->model('warehouses_model');
        $this->load->model('utilities_model');
        $this->load->model('invoices_model');
    }

    public function work_order_phases()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('work_order_phases');
        }
        $data['title'] = _l('work_order_phases');
        $this->load->view('admin/production/settings/work_order_phases_manage', $data);
    }

    public function manage_work_order_phase()
    {
    	if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['workorderphaseid'] == '') {
                $success = $this->production_model->add_work_order_phase($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('work_order_phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->production_model->edit_work_order_phase($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('work_order_phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function production_work_order(){
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('production_work_order');
        }
        $data['title'] = _l('production_work_order');
        $this->load->view('admin/production/work_order/production_work_order_manage', $data);
    }

    public function production_machine_list()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('list_of_machinery_production');
        }

        $data['warehouses'] = $this->warehouses_model->get_warehouse_list();

        $data['title'] = _l('list_of_machinery');
        $data['google_ids_calendars'] = $this->misc_model->get_google_calendar_ids();
        $data['google_calendar_api']  = get_option('google_calendar_api_key');
        add_calendar_assets();

        $this->load->model('manufacturing_settings_model');
        $data['moulds'] = $this->manufacturing_settings_model->get_mould_list();
        $this->load->view('admin/production/list_of_machinery/manage', $data);
    }

    

    public function view_machine_event($id)
    {
        $data['produced_qty'] = $this->production_model->get_produced_qty($id);

        if ($data['produced_qty']->public == 1 && !is_staff_member()
            || $data['produced_qty']->public == 0 && $data['produced_qty']->userid != get_staff_user_id()) {
        } else {
            $this->load->view('admin/production/list_of_machinery/machine_event', $data);
        }
    }

    public function day_production_qty()
    {
        if ($this->input->post() && $this->input->is_ajax_request()) {
            $data    = $this->input->post();
            $success = $this->production_model->produced_qty($data);
            $message = '';
            if ($success) {
                if (isset($data['p_qty_id'])) {
                    $message = _l('updated_successfully', _l('produced_qty'));
                } else {
                     $message = _l('added_successfully', _l('produced_qty'));
                }


                
            } else {
                if (isset($data['p_qty_id'])) {
                    $message = _l('updated_failed', _l('produced_qty'));
                } else {
                     $message = _l('added_failed', _l('produced_qty'));
                }
            }
            echo json_encode([
                'success' => $success,
                'message' => $message,
            ]);
            die();
            
        }
        $data['google_ids_calendars'] = $this->misc_model->get_google_calendar_ids();
        $data['google_calendar_api']  = get_option('google_calendar_api_key');
        $data['title']                = _l('calendar');
        add_calendar_assets();

        $this->load->view('admin/production/list_of_machinery/manage', $data);
    }

    public function get_produced_qty()
    {
        $data['produced_qty'] = $this->production_model->get_produced_qty($_POST);
        if(empty($data['produced_qty']))
        {
            return false;
        } else {
             $this->load->view('admin/production/list_of_machinery/machine_event', $data);
        }
       
    }

    public function get_total_amount($eventid){
        $total = $this->production_model->get_total_amount($eventid);
        echo $total;
    }

    public function work_order_email(){
        if (!is_admin()) {
            access_denied('work_order_email');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('work_order_email');
        }
        $data['title'] = _l('work_order_email');
        $this->load->view('admin/production/settings/work_order_email', $data);
    }

    public function work_order($id = ''){

        $invoice = $this->invoices_model->get($id);
        if (!$invoice || !user_can_view_invoice($id)) {
            blank_page(_l('invoice_not_found'));
        }
        $data['invoices_to_merge'] = $this->invoices_model->check_for_merge_invoice($invoice->clientid, $invoice->id);
        $data['expenses_to_bill']  = $this->invoices_model->get_expenses_to_bill($invoice->clientid);
        $data['invoice']        = $invoice;
        $data['edit']           = true;
        $data['billable_tasks'] = $this->tasks_model->get_billable_tasks($invoice->clientid, !empty($invoice->project_id) ? $invoice->project_id : '');
        $created_user = $this->staff_model->get($invoice->addedfrom);
        $data['created_user_name'] = $created_user->firstname . ' ' . $created_user->lastname;
        if(!empty($invoice->updated_user)){
           $updated_user = $this->staff_model->get($invoice->updated_user);
           $data['updated_user_name'] = $updated_user->firstname . ' ' . $updated_user->lastname; 
        }
        $data['rel_wo_items'] = $this->invoices_model->get_rel_wo_items($id);
        $data['plan_recipes'] = $this->invoices_model->get_plan_recipes($id);
        $title = _l('edit', _l('work_order')) . ' - ' . format_invoice_number($invoice->id);

        if ($this->input->get('customer_id')) {
            $data['customer_id'] = $this->input->get('customer_id');
        }

        $this->load->model('payment_modes_model');
        $data['payment_modes'] = $this->payment_modes_model->get('', [
            'expenses_only !=' => 1,
        ]);

        $this->load->model('taxes_model');
        $data['taxes'] = $this->taxes_model->get();
        $this->load->model('invoice_items_model');
        $this->load->model('warehouses_model');
        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            $data['items'] = $this->warehouses_model->get_grouped();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }

        $data['units'] = $this->warehouses_model->get_units();
        $data['packlist'] = $this->warehouses_model->get_packing_list();

        $this->load->model('production_model');

        $data['work_order_phase'] = $this->production_model->get_wo_phases();

        $sale_id = $this->db->query('SELECT rel_sale_id FROM tblinvoices WHERE id ='.$id)->row()->rel_sale_id;
        
        $this->load->model('estimates_model');
        $data['inv_items'] = $this->estimates_model->get_quote_items($sale_id);
        $this->load->model('currencies_model');
        $data['currencies'] = $this->currencies_model->get();

        $data['base_currency'] = $this->currencies_model->get_base_currency();

        $data['staff']     = $this->staff_model->get('', ['active' => 1]);
        $data['title']     = $title;
        $data['bodyclass'] = 'invoice';

        $this->load->model('manufacturing_settings_model');
        $data['google_ids_calendars'] = $this->misc_model->get_google_calendar_ids();
        $data['google_calendar_api']  = get_option('google_calendar_api_key');
        add_calendar_assets();
        $data['moulds'] = $this->manufacturing_settings_model->get_mould_list();

        $this->load->view('admin/production/work_order/invoice', $data);
    }
}