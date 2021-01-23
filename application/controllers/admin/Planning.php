<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Planning extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('invoices_model');
        $this->load->model('estimates_model');
        $this->load->model('credit_notes_model');
        $this->load->model('utilities_model');
        $this->load->model('manufacturing_settings_model');
    }

    public function pending_sale_order($id = '')
    {
       if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('pending_estimates');
        }

        $data['title'] = _l('pending_sale_order');
        $this->load->view('admin/planing/pending_sale_order_mange', $data);
    }

    public function work_orders_list($id = '')
    {
        if (!has_permission('invoices', '', 'view')
            && !has_permission('invoices', '', 'view_own')
            && get_option('allow_staff_view_invoices_assigned') == '0') {
            access_denied('invoices');
        }

        close_setup_menu();

        $this->load->model('payment_modes_model');
        $data['payment_modes']        = $this->payment_modes_model->get('', [], true);
        $data['invoiceid']            = $id;
        $data['title']                = _l('work_orders');
        $data['invoices_years']       = $this->invoices_model->get_invoices_years();
        $data['invoices_sale_agents'] = $this->invoices_model->get_sale_agents();
        $data['invoices_statuses']    = $this->invoices_model->get_statuses();
        $data['bodyclass']            = 'invoices-total-manual';
        $this->load->view('admin/invoices/manage', $data);
    }

    public function work_order($id = '')
    {
        if ($this->input->post()) {
            $invoice_data = $this->input->post();
            if ($id == '') {
                if (!has_permission('invoices', '', 'create')) {
                    access_denied('invoices');
                }
                $id = $this->invoices_model->add($invoice_data);
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('work_order')));
                    $redUrl = admin_url('planning/work_order/' . $id);

                    if (isset($invoice_data['save_and_record_payment'])) {
                        $this->session->set_userdata('record_payment', true);
                    } elseif (isset($invoice_data['save_and_send_later'])) {
                        $this->session->set_userdata('send_later', true);
                    }

                    redirect($redUrl);
                }
            } else {
                if (!has_permission('invoices', '', 'edit')) {
                    access_denied('invoices');
                }
                unset($invoice_data['item_select']);
                unset($invoice_data['product_name']);
                unset($invoice_data['rel_product_id']);
                unset($invoice_data['pack_capacity']);
                unset($invoice_data['qty']);
                unset($invoice_data['unit']);
                unset($invoice_data['volume_m3']);
                unset($invoice_data['notes']);

                if(isset($invoice_data['wo_items'])){
                    $wo_items = $invoice_data['wo_items'];
                    unset($invoice_data['wo_items']);
                }

                if(isset($invoice_data['plan_items'])){
                    $plan_items = $invoice_data['plan_items'];
                    unset($invoice_data['plan_items']);
                }
                if(isset($invoice_data['recipe_removed-items'])){
                    $recipe_removed = $invoice_data['recipe_removed-items'];
                    unset($invoice_data['recipe_removed-items']);
                }
                $success = $this->invoices_model->update($invoice_data, $id);

                $wo_item_sucess = $this->invoices_model->update_rel_wo_items($wo_items,$id);
                $plan_recipe_success = $this->invoices_model->update_plan_recipe($plan_items,$id);

                if($plan_recipe_success)
                {
                    $this->db->query('UPDATE tblinvoices SET plan_recipe_edited = 1 WHERE id='.$id);
                }

                if(isset($recipe_removed))
                    $this->invoices_model->delete_recipe_items($recipe_removed);

                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('work_order')));
                } else if ($wo_item_sucess) {
                    set_alert('success', _l('updated_successfully', _l('work_order')));
                } else if($plan_recipe_success){
                    set_alert('success', _l('updated_successfully', _l('work_order')));
                }

                // redirect(admin_url('invoices/list_invoices/' . $id));
                redirect(admin_url('planning/work_order/' . $id));
            }
        }
        if ($id == '') {
            $title                  = _l('create_new_work_order');
            $data['billable_tasks'] = [];
        } else {
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
            // print_r($data['rel_wo_items']); exit();
            $data['plan_recipes'] = $this->invoices_model->get_plan_recipes($id);
            // print_r($data['plan_recipes']); exit();

            $title = _l('edit', _l('work_order')) . ' - ' . format_invoice_number($invoice->id);
        }

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

        
        $data['google_ids_calendars'] = $this->misc_model->get_google_calendar_ids();
        $data['google_calendar_api']  = get_option('google_calendar_api_key');
        add_calendar_assets();
        $data['moulds'] = $this->manufacturing_settings_model->get_mould_list();

        $this->load->view('admin/invoices/invoice', $data);
    }

    public function get_installation_time($wo_item_id){
        if ($this->input->is_ajax_request()) {
            $installation_time = $this->invoices_model->get_installation_time($wo_item_id);
            echo json_encode($installation_time);
        }
    }

}