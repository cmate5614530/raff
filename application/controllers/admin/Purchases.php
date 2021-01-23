<?php

header('Content-Type: text/html; charset=utf-8');
defined('BASEPATH') or exit('No direct script access allowed');

class Purchases extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('purchases_model');
        $this->load->model('warehouses_model');
    }

    public function purchase_orders_phases()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('purchase_order_phases');
        }
        $data['title'] = _l('purchase_order_phases');
        $this->load->view('admin/purchases/settings/purchase_orders_phases', $data);
    }

    public function manage_purchase_orders_phases()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['purchaseOrderPhaseid'] == '') {
                $success = $this->purchases_model->add_phase($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('Purchase Order Phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->purchases_model->edit_phase($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('Purchase Order Phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function purchase_orders()
    {
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('purchase_order');
        }

        $data['title'] = _l('purchase_orders');
        $this->load->view('admin/purchases/purchase_order/manage', $data);
    }

    public function manage_purchase_order($id = '')
    {
    	if ($this->input->post()) {
            $data = $this->input->post();
            if ($id == '') {
                $id = $this->purchases_model->add_purchase_order($data);
                if(isset($data['newitems']))
                {
                    $purchase_order_item = $data['newitems'];
                    $purchase_order_item['rel_purchase_id'] = $id;

                    $this->purchases_model->add_purchase_order_item($purchase_order_item);
                }
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('purchase_order')));
                    redirect(admin_url('purchases/purchase_orders'));
                }
            } else {
                $success = $this->purchases_model->update_purchase_order($data, $id);
                $current_purchase_item = $this->purchases_model->get_purchase_order_item($id);
                if(empty($current_purchase_item) && isset($data['newitems']))
                {
                    $purchase_order_item = $data['newitems'];
                    $purchase_order_item['rel_purchase_id'] = $id;

                    $this->purchases_model->add_purchase_order_item($purchase_order_item);
                }
                else {
                    if(isset($data['newitems']))
                        $purchase_order_item['newitems'] = $data['newitems'];
                    if(isset($data['removed_items']))
                        $purchase_order_item['removed_items'] = $data['removed_items'];
                    if(isset($data['items']))
                        $purchase_order_item['items'] = $data['items'];
                    $purchase_order_item['rel_purchase_id'] = $id;

                    $this->purchases_model->update_purchase_order_item($purchase_order_item);

                }
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('purchase_order')));
                }
                redirect(admin_url('purchases/purchase_orders'));
            }
        }
        if ($id == '') {
            $title = _l('add_new', _l('purchase_order'));
        } else {
            $data['purchase_order'] = $this->purchases_model->get_purchase_order($id);

            $created_user = $this->staff_model->get($data['purchase_order']->created_user);
            $data['created_user_name'] = $created_user->firstname . ' ' . $created_user->lastname;
            if(!empty($data['purchase_order']->updated_user)){
               $updated_user = $this->staff_model->get($data['purchase_order']->updated_user);
               $data['updated_user_name'] = $updated_user->firstname . ' ' . $updated_user->lastname; 
            }
            $title = _l('edit', _l('purchase_order'));
      
        }
        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            $data['items'] = $this->warehouses_model->get_grouped();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }

        if(isset($data['purchase_order']))
            $data['purchase_order_item'] = $this->purchases_model->get_purchase_order_item($data['purchase_order']->id);
        $data['acc_list'] = $this->purchases_model->get_acc_list();
        $data['purchase_id'] = $this->purchases_model->get_purchase_id();
        $data['product_code'] = $this->purchases_model->get_product_code();
        $data['units'] = $this->warehouses_model->get_units();
        $data['title']         = $title;
        $this->load->view('admin/purchases/purchase_order/purchase_order', $data);
    }

    public function delete_purchase_order($id)
    {
        if (!$id) {
            redirect(admin_url('purchases/purchase_orders'));
        }
        $response = $this->purchases_model->delete_purchase_order($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('purchase_order')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('purchase_order')));
        }
        redirect(admin_url('purchases/purchase_orders'));
    }

    public function pending_purchase_request()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('pending_purchase_request');
        }
        $data['title'] = _l('pending_purchase_request');
        $this->load->view('admin/purchases/pending_purchase_request_manage', $data);
    }

    public function purchase_email()
    {
        if (!is_admin()) {
            access_denied('purchase_email');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('purchase_email');
        }
        $data['title'] = _l('purchase_email');
        $this->load->view('admin/purchases/settings/purchase_email', $data);
    }
}