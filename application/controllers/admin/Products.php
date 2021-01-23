<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Products extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('products_model');
        $this->load->model('sale_model');
        $this->load->model('warehouses_model');
        $this->load->model('manufacturing_settings_model');
    }

    public function product_list()
    {
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('product_list');
        }

        $data['title'] = _l('product_list');
        $data['price_cat'] = $this->products_model->get_pricing_category_by_permission(get_staff_user_id());
        $this->load->view('admin/products/product_list/manage', $data);
    }

    public function get_price_category_calc($no)
    {
         if ($this->input->is_ajax_request()) {
            $res = $this->sale_model->get_pricing_category($no);
            echo json_encode($res);
        }
    }

    public function product_recipe()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('product_recipe');
        }

        $data['title'] = _l('product_recipe');
        $data['product_categories'] = $this->warehouses_model->get_stock_categories_finished();
        $this->load->view('admin/products/product_recipe/manage', $data);
    }

    public function manage_product_recipe($id = '')
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            $current_recipe_data = $this->products_model->get_product_receipe_item($id);
            if(empty($current_recipe_data) && isset($data['newitems']))
            {
                $recipe_data = $data['newitems'];
                $recipe_data['rel_product_id'] = $id;
                $recipe_id = $this->products_model->add_product_recipe_item($recipe_data);

                if ($recipe_id) {
                    set_alert('success', _l('added_successfully', _l('product_recipe')));
                    // redirect(admin_url('products/product_recipe'));
                }
            } else {
                if(isset($data['newitems']))
                    $recipe_data['newitems'] = $data['newitems'];
                if(isset($data['removed_items']))
                    $recipe_data['removed_items'] = $data['removed_items'];
                if(isset($data['items']))
                    $recipe_data['items'] = $data['items'];

                $recipe_data['rel_product_id'] = $id;
                $this->products_model->update_product_recipe_item($recipe_data);
                set_alert('success', _l('updated_successfully', _l('product_recipe')));
                // redirect(admin_url('products/product_recipe'));
            }

            $pricing_calc_data = [];
            $pricing_calc_data['other_cost_details'] = $data['other_cost_details'];
            $pricing_calc_data['other_cost'] = $data['other_cost'];
            $pricing_calc_data['price'] = $data['total'];
            $pricing_calc_data['ins_cost'] = $data['ins_cost'];
            $pricing_calc_data['ins_time'] = $data['consumed_time'];
            $pricing_calc_data['last_calc_date'] = date('Y-m-d h:i:s');
            $pricing_calc_data['rel_product_id'] = $id;
            $current_pricing_calc_data = $this->products_model->get_pricing_calc($id);

            if(empty($current_pricing_calc_data)){
                $cal_id = $this->products_model->add_pricing_calc($pricing_calc_data);
                if ($cal_id) {
                    // set_alert('success', _l('added_successfully', _l('pricing_calculation')));
                    set_alert('success', _l('added_successfully', _l('product_recipe')));
                }
            }
            else{
                $success = $this->products_model->update_pricing_calc($pricing_calc_data,$current_pricing_calc_data->id);
                if ($success) {
                    // set_alert('success', _l('updated_successfully', _l('pricing_calculation')));
                    set_alert('success', _l('updated_successfully', _l('product_recipe')));
                }
            }

            $install_time = [];
            $install_time['rel_product_id'] = $id;
            $install_time['consumed_time'] = $data['consumed_time'];
            $current_install_time = $this->products_model->get_install_time($id);
            if(empty($current_install_time)){

                $install_id = $this->products_model->add_install_time($install_time);
                if ($install_id) {
                    set_alert('success', _l('added_successfully', _l('product_recipe')));
                }
            }
            else{
                $success = $this->products_model->update_install_time($install_time,$current_install_time->id);
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('product_recipe')));
                }
            }
            redirect(admin_url('products/product_recipe'));
            
            
        }
        
        $data['title']         = _l('product_recipe');
        $data['product'] = $this->warehouses_model->stock_list_get($id);
        $data['all_products'] = $this->warehouses_model->stock_list_get();
        $data['pack'] = $this->products_model->get_pack_by_product_code($id);

        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            $data['items'] = $this->warehouses_model->get_grouped();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }
        $data['pricing_calc_data'] = $this->products_model->get_pricing_calc($id);
        $data['install_time'] = $this->products_model->get_install_time($id);
        $data['moulds'] = $this->manufacturing_settings_model->get_mould_list();
        $data['machine_list'] = $this->manufacturing_settings_model->get_machine_list();
        $data['product_receipe_item'] = $this->products_model->get_product_receipe_item($id);
        $this->load->view('admin/products/product_recipe/product_recipe', $data);
    }

    public function get_moulds_by_ajax()
    {
        if ($this->input->is_ajax_request()) {
            $moulds = $this->manufacturing_settings_model->get_mould_list();
            echo json_encode($moulds);
        }
    }

    public function get_recipes_by_product($id)
    {
        if ($this->input->is_ajax_request()) {
            $recipes = $this->products_model->get_product_receipe_item($id);
            echo json_encode($recipes);
        }
    }

    public function get_recipes_by_product1($id)
    {
        if ($this->input->is_ajax_request()) {
            /*pre-produced saving*/
            $pre_produceds = $this->db->query('SELECT id FROM tblproduct_recipe WHERE pre_produced = 1')->result_array();
            print_r($pre_produceds); exit();
            $recipes = $this->products_model->get_product_receipe_item($id);
            echo json_encode($recipes);
        }
    }

    public function get_product_recipes_by_ingredient(){
        if ($this->input->is_ajax_request()) {
            // print_r($_POST); exit();
            $product_recipe = $this->products_model->get_product_receipe_by_ingredient($_POST);
            echo json_encode($product_recipe);
        }
    }
}