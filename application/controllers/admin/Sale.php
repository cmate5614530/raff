<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Sale extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('sale_model');
        $this->load->model('proposals_model');
        $this->load->model('estimates_model');
        $this->load->model('warehouses_model');
        $this->load->model('currencies_model');
    }

    /*--------------Pricing Category-------------*/
    public function pricing_categories()
    {
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('pricing-category');
        }

        // $data['currency_exchanges'] = $this->warehouses_model->get_currency_exchange();
        $data['currency'] = $this->currencies_model->get();
        $data['title'] = _l('pricing_categories');
        $this->load->view('admin/sale/settings/pricing_categories_manage', $data);
    }

    public function manage_pricing_categories()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['pricingCatId'] == '') {
                $success = $this->sale_model->add_pricing_category($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('pricing_category'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->sale_model->edit_pricing_category($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('pricing_category'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }
    public function delete_pricing_category($id)
    {
        if (!$id) {
            redirect(admin_url('sale/pricing_categories'));
        }
        $response = $this->sale_model->delete_pricing_category($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('pricing_category')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('pricing_category')));
        }
        redirect(admin_url('sale/pricing_categories'));
    }

    public function get_price_category_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $priceCategory = $this->sale_model->get_pricing_category($id);
            echo json_encode($priceCategory);
        }
    }
    /*-----------Sale Phases----------*/
    public function sale_phases()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('sale_phases');
        }
        $data['title'] = _l('sale_phases');
        $this->load->view('admin/sale/settings/sale_phases_manage', $data);
    }

    public function manage_sale_phases()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['salephaseid'] == '') {
                $success = $this->sale_model->add_sale_phases($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('sale_phases'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->sale_model->edit_sale_phases($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('sale_phases'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_sale_phases($id)
    {
        if (!$id) {
            redirect(admin_url('sale/sale_phases'));
        }
        $response = $this->sale_model->delete_sale_phases($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('sale_phases')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('sale_phases')));
        }
        redirect(admin_url('sale/sale_phases'));
    }

    /*----------Quote Phases------*/
    public function quote_phases()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('quote_phase');
        }

        $data['title'] = _l('quote_phase');
        $this->load->view('admin/sale/settings/quote_phases_manage', $data);
    }

    public function manage_quote_phases()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['quoteId'] == '') {
                $success = $this->sale_model->add_quote_phases($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('quote_phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->sale_model->edit_quote_phases($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('quote_phase'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_quote_phases($id)
    {
        if (!$id) {
            redirect(admin_url('sale/quote_phases'));
        }
        $response = $this->sale_model->delete_quote_phases($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('quote_phase')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('quote_phase')));
        }
        redirect(admin_url('sale/quote_phases'));
    }


    public function quotation_list($proposal_id = '')
    {
        close_setup_menu();

        if (!has_permission('proposals', '', 'view') && !has_permission('proposals', '', 'view_own') && get_option('allow_staff_view_estimates_assigned') == 0) {
            access_denied('proposals');
        }

        $isPipeline = $this->session->userdata('proposals_pipeline') == 'true';

        if ($isPipeline && !$this->input->get('status')) {
            $data['title']           = _l('proposals_pipeline');
            $data['bodyclass']       = 'proposals-pipeline';
            $data['switch_pipeline'] = false;
            // Direct access
            if (is_numeric($proposal_id)) {
                $data['proposalid'] = $proposal_id;
            } else {
                $data['proposalid'] = $this->session->flashdata('proposalid');
            }

            $this->load->view('admin/proposals/pipeline/manage', $data);
        } else {

            // Pipeline was initiated but user click from home page and need to show table only to filter
            if ($this->input->get('status') && $isPipeline) {
                $this->pipeline(0, true);
            }

            $data['proposal_id']           = $proposal_id;
            $data['switch_pipeline']       = true;
            $data['title']                 = _l('quotation');
            $data['statuses']              = $this->proposals_model->get_statuses();
            $data['proposals_sale_agents'] = $this->proposals_model->get_sale_agents();
            $data['years']                 = $this->proposals_model->get_proposals_years();
            $this->load->view('admin/proposals/manage', $data);
        }
    }

    public function quotation($id = '')
    {
        if ($this->input->post()) {
            $proposal_data = $this->input->post();
            if(isset($proposal_data['quote_phase'])) 
                unset($proposal_data['quote_phase']);
            if ($id == '') {
                if (!has_permission('proposals', '', 'create')) {
                    access_denied('proposals');
                }
                $id = $this->proposals_model->add($proposal_data);
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('quotation')));
                    redirect(admin_url('sale/quotation_list'));
                    
                }
            } else {
                if (!has_permission('proposals', '', 'edit')) {
                    access_denied('proposals');
                }
                
                $success = $this->proposals_model->update($proposal_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('quotation')));
                }
                
                redirect(admin_url('sale/quotation_list'));
            }
        }
        if ($id == '') {
            $title = _l('add_new', _l('quotation'));
        } else {
            $data['proposal'] = $this->proposals_model->get($id);

            if (!$data['proposal'] || !user_can_view_proposal($id)) {
                blank_page(_l('proposal_not_found'));
            }

            $data['estimate']    = $data['proposal'];
            // $data['quote_items'] = $this->proposals_model->get_quote_items($id);
            $data['is_proposal'] = true;
            $title               = _l('edit', _l('quotation'));
        }

        $this->load->model('sale_model');
        $data['quote_phases'] = $this->sale_model->get_quote_phases();
        // $data['pricing_categories'] = $this->sale_model->get_pricing_category_list();
        $this->load->model('products_model');
        $data['pricing_categories'] = $this->products_model->get_pricing_category_by_permission(get_staff_user_id());;

        $this->load->model('taxes_model');
        $data['taxes'] = $this->taxes_model->get();

        $this->load->model('invoice_items_model');
        // $data['ajaxItems'] = false;
        // if (total_rows(db_prefix() . 'items') <= ajax_on_total_items()) {
        //     $data['items'] = $this->invoice_items_model->get_grouped();
        // } else {
        //     $data['items']     = [];
        //     $data['ajaxItems'] = true;
        // }
        $this->load->model('warehouses_model');
        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            // $data['items'] = $this->warehouses_model->get_grouped();
            $data['items'] = $this->warehouses_model->get_grouped_packing();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }
        $data['units'] = $this->warehouses_model->get_units();
        $data['packlist'] = $this->warehouses_model->get_packing_list();
        $data['items_groups'] = $this->invoice_items_model->get_groups();

        $data['statuses']      = $this->proposals_model->get_statuses();
        $data['staff']         = $this->staff_model->get('', ['active' => 1]);
        $data['currencies']    = $this->currencies_model->get();
        $this->load->model('finances_model');
        // $data['currencies']    = $this->finances_model->get_currency_exchange();
        $data['base_currency'] = $this->currencies_model->get_base_currency();
        // print_r($data['estimate']); exit();
        $data['title'] = $title;
        $this->load->view('admin/proposals/proposal', $data);
    }


    public function quotation_approval_list($proposal_id = '')
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('quotation_approval');
        }
        $data['proposal_id']           = $proposal_id;
        $data['statuses']              = $this->proposals_model->get_statuses();
        $data['title'] = _l('quotation_approval');
        $this->load->view('admin/sale/quotation_approval/manage', $data);
    }

    public function quotation_approval($id = '')
    {
        if ($this->input->post()) {
            $proposal_data = $this->input->post();
            if(isset($proposal_data['quote_phase'])) 
                unset($proposal_data['quote_phase']);
            if ($id == '') {
                if (!has_permission('proposals', '', 'create')) {
                    access_denied('proposals');
                }
                $id = $this->proposals_model->add($proposal_data);
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('quotation')));
                    redirect(admin_url('sale/quotation_list'));
                    
                }
            } else {
                if (!has_permission('proposals', '', 'edit')) {
                    access_denied('proposals');
                }
                
                $success = $this->proposals_model->update($proposal_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('quotation')));
                }
                
                redirect(admin_url('sale/quotation_list'));
            }
        }
        if ($id == '') {
            $title = _l('add_new', _l('quotation'));
        } else {
            $data['proposal'] = $this->proposals_model->get($id);

            if (!$data['proposal'] || !user_can_view_proposal($id)) {
                blank_page(_l('proposal_not_found'));
            }

            $data['estimate']    = $data['proposal'];
            // $data['quote_items'] = $this->proposals_model->get_quote_items($id);
            $data['is_proposal'] = true;
            $title               = _l('edit', _l('quotation'));
        }

        $this->load->model('sale_model');
        $data['quote_phases'] = $this->sale_model->get_quote_phases();
        $data['pricing_categories'] = $this->sale_model->get_pricing_category_list();

        $this->load->model('taxes_model');
        $data['taxes'] = $this->taxes_model->get();

        $this->load->model('invoice_items_model');
        // $data['ajaxItems'] = false;
        // if (total_rows(db_prefix() . 'items') <= ajax_on_total_items()) {
        //     $data['items'] = $this->invoice_items_model->get_grouped();
        // } else {
        //     $data['items']     = [];
        //     $data['ajaxItems'] = true;
        // }
        $this->load->model('warehouses_model');
        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            // $data['items'] = $this->warehouses_model->get_grouped();
            $data['items'] = $this->warehouses_model->get_grouped_packing();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }
        $data['units'] = $this->warehouses_model->get_units();
        $data['packlist'] = $this->warehouses_model->get_packing_list();
        $data['items_groups'] = $this->invoice_items_model->get_groups();

        $data['statuses']      = $this->proposals_model->get_statuses();
        $data['staff']         = $this->staff_model->get('', ['active' => 1]);
        $data['currencies']    = $this->currencies_model->get();
        $this->load->model('finances_model');
        // $data['currencies']    = $this->finances_model->get_currency_exchange();
        $data['base_currency'] = $this->currencies_model->get_base_currency();
        // print_r($data['estimate']); exit();
        $data['title'] = $title;
        $this->load->view('admin/proposals/proposal_approval', $data);
    }

    public function sale_order_list($id = '')
    {
        if (!has_permission('estimates', '', 'view') && !has_permission('estimates', '', 'view_own') && get_option('allow_staff_view_estimates_assigned') == '0') {
            access_denied('estimates');
        }

        $isPipeline = $this->session->userdata('estimate_pipeline') == 'true';

        $data['estimate_statuses'] = $this->estimates_model->get_statuses();
        if ($isPipeline && !$this->input->get('status') && !$this->input->get('filter')) {
            $data['title']           = _l('estimates_pipeline');
            $data['bodyclass']       = 'estimates-pipeline estimates-total-manual';
            $data['switch_pipeline'] = false;

            if (is_numeric($id)) {
                $data['estimateid'] = $id;
            } else {
                $data['estimateid'] = $this->session->flashdata('estimateid');
            }

            $this->load->view('admin/estimates/pipeline/manage', $data);
        } else {

            // Pipeline was initiated but user click from home page and need to show table only to filter
            if ($this->input->get('status') || $this->input->get('filter') && $isPipeline) {
                $this->pipeline(0, true);
            }

            $data['estimateid']            = $id;
            $data['switch_pipeline']       = true;
            $data['title']                 = _l('sale_order');
            $data['bodyclass']             = 'estimates-total-manual';
            $data['estimates_years']       = $this->estimates_model->get_estimates_years();
            $data['estimates_sale_agents'] = $this->estimates_model->get_sale_agents();
            $this->load->view('admin/estimates/manage', $data);
        }
    }

    public function sale_order($id = '')
    {
        if ($this->input->post()) {
            $estimate_data = $this->input->post();
            // print_r($estimate_data); exit();
            if ($id == '') {
                if (!has_permission('estimates', '', 'create')) {
                    access_denied('estimates');
                }
                $id = $this->estimates_model->add($estimate_data);
                if ($id) {
                    // set_alert('success', _l('added_successfully', _l('sale_order')));
                    // if ($this->set_estimate_pipeline_autoload($id)) {
                    //     redirect(admin_url('estimates/list_estimates/'));
                    // } else {
                    //     redirect(admin_url('estimates/list_estimates/' . $id));
                    // }
                    redirect(admin_url('sale/sale_order_list'));
                }
            } else {
                if (!has_permission('estimates', '', 'edit')) {
                    access_denied('estimates');
                }
                // print_r($estimate_data); exit();
                $success = $this->estimates_model->update($estimate_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('sale_order')));
                }
                // if ($this->set_estimate_pipeline_autoload($id)) {
                //     redirect(admin_url('estimates/list_estimates/'));
                // } else {
                //     redirect(admin_url('estimates/list_estimates/' . $id));
                // }
                redirect(admin_url('sale/sale_order_list'));
            }
        }
        if ($id == '') {
            $title = _l('create_new_sale_order');
        } else {
            $estimate = $this->estimates_model->get($id);
            if (!$estimate || !user_can_view_estimate($id)) {
                blank_page(_l('estimate_not_found'));
            }

            $data['estimate'] = $estimate;
            $data['edit']     = true;
            $title            = _l('edit', _l('sale_order'));

            $created_user = $this->staff_model->get($estimate->addedfrom);
            $data['created_user_name'] = $created_user->firstname . ' ' . $created_user->lastname;
            if(!empty($estimate->updated_user)){
               $updated_user = $this->staff_model->get($estimate->updated_user);
               $data['updated_user_name'] = $updated_user->firstname . ' ' . $updated_user->lastname; 
            }
        }
        if ($this->input->get('customer_id')) {
            $data['customer_id'] = $this->input->get('customer_id');
        }
        $this->load->model('taxes_model');
        $data['taxes'] = $this->taxes_model->get();
        $this->load->model('currencies_model');
        $data['currencies'] = $this->currencies_model->get();

        $data['base_currency'] = $this->currencies_model->get_base_currency();

        $this->load->model('invoice_items_model');

        // $data['ajaxItems'] = false;
        // if (total_rows(db_prefix().'items') <= ajax_on_total_items()) {
        //     $data['items'] = $this->invoice_items_model->get_grouped();
        // } else {
        //     $data['items']     = [];
        //     $data['ajaxItems'] = true;
        // }

        $this->load->model('warehouses_model');
        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            $data['items'] = $this->warehouses_model->get_grouped();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }
        $data['units'] = $this->warehouses_model->get_units();
        // $data['packlist'] = $this->warehouses_model->get_packing_list();

        $this->load->model('sale_model');
        $data['sale_phase'] = $this->sale_model->get_sale_phases();

        $data['quote_items'] = $this->estimates_model->get_quote_items($id);

        $data['items_groups'] = $this->invoice_items_model->get_groups();

        $data['staff']             = $this->staff_model->get('', ['active' => 1]);
        $data['estimate_statuses'] = $this->estimates_model->get_statuses();
        $data['title']             = $title;
        $this->load->view('admin/estimates/estimate', $data);
    }

    public function set_estimate_pipeline_autoload($id)
    {
        if ($id == '') {
            return false;
        }
        if ($this->session->has_userdata('estimate_pipeline') && $this->session->userdata('estimate_pipeline') == 'true') {
            $this->session->set_flashdata('estimateid', $id);

            return true;
        }

        return false;
    }

    public function sale_order_email(){
        if (!is_admin()) {
            access_denied('sale_order_email');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('sale_order_email');
        }
        $data['title'] = _l('sale_order_email');
        $this->load->view('admin/sale/settings/sale_order_email', $data);
    }

     public function quotation_approval_email(){
        if (!is_admin()) {
            access_denied('quotation_approval_email');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('quotation_approval_email');
        }
        $data['title'] = _l('quotation_approval_email');
        $this->load->view('admin/sale/settings/quotation_approval_email', $data);
    }
    
}