<?php

header('Content-Type: text/html; charset=utf-8');
defined('BASEPATH') or exit('No direct script access allowed');

class Finances extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('finances_model');
    }

    public function currency_exchange_rate()
    {
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('currencies_exchange');
        }
        $data['title'] = _l('currency_exchange_rate');
        $this->load->view('admin/finances/currency_exchange_rate/manage', $data);
    }

    public function currency_exchane_rate_manage()
    {
    	if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['currencyid'] == '') {
                $success = $this->finances_model->add_currency($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('currency'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->finances_model->edit_currency($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('currency'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_currency($id)
    {
        if (!$id) {
            redirect(admin_url('finances/currency_exchange_rate'));
        }
        $response = $this->finances_model->delete_currency($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('currency')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('currency_lowercase')));
        }
        redirect(admin_url('finances/currency_exchange_rate'));
    }

    public function ready_to_invoice()
    {
    	 if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('ready_to_invoices');
        }

        $data['title'] = _l('work_orders');
        $this->load->view('admin/finances/ready_to_invoice/manage', $data);
    }
}