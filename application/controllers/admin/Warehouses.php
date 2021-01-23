<?php

header('Content-Type: text/html; charset=utf-8');
defined('BASEPATH') or exit('No direct script access allowed');

class Warehouses extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('warehouses_model');
        $this->load->model('staff_model');
        $this->load->model('purchases_model');
        $this->load->model('currencies_model');
    }

    /* Warehouse Material */

    public function warehouse()
    {
    	if (!is_admin()) {
            access_denied('warehouses');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('warehouse');
        }
        $data['title'] = _l('warehouses');
        $this->load->view('admin/warehouses/settings/warehouses', $data);
    }

    public function warehouse_manage()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['warehouseid'] == '') {
                $success = $this->warehouses_model->warehouse_add($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('warehouse'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->warehouses_model->warehouse_edit($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('warehouse'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function warehouse_delete($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/warehouse'));
        }
        $response = $this->warehouses_model->warehouse_delete($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('warehouse')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('warehouse')));
        }
        redirect(admin_url('warehouses/warehouse'));
    }

    public function stock_categories()
    {
    	if (!is_admin()) {
            access_denied('stock_category');
        }
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('stock_categories');
        }

        $data['title'] = _l('stock_category');
        $this->load->view('admin/warehouses/settings/stock_categories', $data);
    }

    public function stock_categories_manage()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['stockId'] == '') {
                $success = $this->warehouses_model->stock_category_add($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('stock_category'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->warehouses_model->stock_category_edit($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('stock_category'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function stock_category_delete($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/stock_categories'));
        }
        $response = $this->warehouses_model->stock_category_delete($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('stock_category')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('stock_category')));
        }
        redirect(admin_url('warehouses/stock_categories'));
    }

    public function stock_units()
    {
    	if (!is_admin()) {
            access_denied('stock_units');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('stock_units');
        }
        $data['title'] = _l('stock_units');
        $this->load->view('admin/warehouses/settings/stock_units', $data);
    }

    public function stock_unit_manage()
    {
    	if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['stock_unit_id'] == '') {
                $success = $this->warehouses_model->stock_unit_add($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('stock_unit'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->warehouses_model->stock_unit_edit($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('stock_unit'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function change_unit_status($id, $status)
    {
        if ($this->input->is_ajax_request()) {
            $this->warehouses_model->change_unit_status($id, $status);
        }
    }

    public function get_units()
    {
        if ($this->input->is_ajax_request()) {
            $units = $this->warehouses_model->get_units();
            echo json_encode($units);
        }
    }
    /* End Warehouse Material */

    public function stock_level_warning()
    {
        if (!is_admin()) {
            access_denied('stock_level_warning');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('stock_level_warning');
        }
        $data['title'] = _l('stock_level_warning');
        $this->load->view('admin/warehouses/settings/stock_level_warning', $data);
    }

    /*-------------------------Stock List---------------------------*/
    public function stock_lists()
    {
    	if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('stock_lists');
        }
        // $data['warehouses'] = $this->stock_lists_model->get_warehouses();
        $data['stock_units'] = $this->warehouses_model->get_units();
        $data['stock_categories'] = $this->warehouses_model->get_stock_categories();
        $data['currency'] = $this->currencies_model->get();
        $data['title'] = _l('stock_list');

        // $image = base_url().'uploads/stock_lists/medical-person-03.jpg';

        //  // Read image path, convert to base64 encoding
        // $type = pathinfo($image, PATHINFO_EXTENSION);
        // $data = file_get_contents($image);

        // $imgData = base64_encode($data);

        //  // Format the image SRC:  data:{mime};base64,{data};
        // $src = 'data:image/' . $type . ';base64,'.$imgData;
        // $data['src'] = $src;
        $this->load->view('admin/warehouses/stock_lists/manage', $data);
    }

    public function stock_lists_manage()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            
            $folderPath = "uploads/stock_lists/";
            if (move_uploaded_file($_FILES["product_photo"]["tmp_name"], $folderPath . $_FILES["product_photo"]["name"])) {
                $data['product_photo'] = $folderPath . $_FILES["product_photo"]["name"];
            }
            
            if ($data['stocklistId'] == '') {
                
                $success = $this->warehouses_model->stock_list_add($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('stock_list'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->warehouses_model->stock_list_edit($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('stock_list'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function check_duplicate_product_code()
    {
       $product_code = trim($this->input->post('product_code'));
        $response    = [
            'exists'  => (bool) total_rows(db_prefix() . 'stock_lists', ['product_code' => $product_code]) > 0,
            'message' => _l('product_exists_info', '<b>' . $product_code . '</b>'),
        ];
        echo json_encode($response);
    }

    /* Get stock_list by id / ajax */
    public function get_stock_list_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $stock_lists_by_id = $this->warehouses_model->stock_list_get($id);
            echo json_encode($stock_lists_by_id);
        }
    }

    public function update_product_price()
    {
        $data = $this->input->post();
        $res = $this->warehouses_model->update_product_price($data);
        echo json_encode($res);
    }

    public function stock_list_delete($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/stock_lists'));
        }
        $response = $this->warehouses_model->stock_list_delete($id);
        if ($response) {
            set_alert('success', _l('deleted', _l('Item')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('Item')));
        }
        redirect(admin_url('warehouses/stock_lists'));
    }

    /*-------------------Transfer----------------------------*/
    public function transfers()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('transfers');
        }

        $data['title'] = _l('transfers');
        $this->load->view('admin/warehouses/transfers/manage', $data);
    }

    public function transfers_manage($id = '')
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if(isset($data['allocation']) && $data['allocation'] == 'on')
            {
                $data['allocation'] = 1;
            } 
            else
            {
                $data['allocation'] = 0;
            }
            if ($id == '') {
                // Allocated Items saving if allocation is enabled
                $id = $this->warehouses_model->add_transfer($data);
                if($id && $data['allocation'] == 1)
                {
                    $allocation_data['transfer_id'] = $id;
                    $allocation_data['allocation_product_code'] = $data['stock_product_code'];
                    $stock_list = $this->warehouses_model->stock_list_get($allocation_data['allocation_product_code']);
                    $allocation_data['product_name'] = $stock_list->product_name;
                    $allocation_data['stock_category'] = $stock_list->category;
                    $location = $this->warehouses_model->get_warehouse($data['transaction_from'])->warehouse_name;
                    $allocation_data['allocation_reason'] = $data['allocation_reason'];
                    $allocation_data['current_location'] = $location;
                    $allocation_data['stock_quantity'] = $data['transaction_qty'];
                    $allocation_data['wo_no'] = $data['wo_no'];
                    $user = $this->staff_model->get(get_staff_user_id());
                    $allocation_data['created_user'] = $user->firstname.' '. $user->lastname;
                    $allocation_id = $this->warehouses_model->add_allocated_items($allocation_data); 
                    $this->db->query('UPDATE tbltransfer_lists SET allocation_id = '.$allocation_id.' WHERE `id` ='.$id);
                }
                
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('transfer')));
                    redirect(admin_url('warehouses/transfers'));
                    
                } else {
                    set_alert('danger', _l('warehouse_limit_warning', _l('transfer')));
                    redirect(admin_url('warehouses/transfers'));
                }
            } else {
                $allocation_id = $this->warehouses_model->get_transfer($id)->allocation_id;
                if($data['allocation'] == 1)
                {
                    $allocation_data['transfer_id'] = $id;
                    $allocation_data['allocation_product_code'] = $data['stock_product_code'];
                    $stock_list = $this->warehouses_model->stock_list_get($allocation_data['allocation_product_code']);
                    $allocation_data['product_name'] = $stock_list->product_name;
                    $allocation_data['stock_category'] = $stock_list->category;
                    $location = $this->warehouses_model->get_warehouse($data['transaction_from'])->warehouse_name;
                    $allocation_data['allocation_reason'] = $data['allocation_reason'];
                    $allocation_data['current_location'] = $location;
                    $allocation_data['stock_quantity'] = $data['transaction_qty'];
                    $allocation_data['wo_no'] = $data['wo_no'];
                    $user = $this->staff_model->get(get_staff_user_id());
                    $allocation_data['created_user'] = $user->firstname.' '. $user->lastname;
    
                    if($allocation_id != 0)
                    {
                        $this->warehouses_model->update_allocated_items($allocation_data,$allocation_id); 
                    }
                    else{
                        $allocation_id = $this->warehouses_model->add_allocated_items($allocation_data);
                        $data['allocation_id'] = $allocation_id;
                    }
                }
                if($data['allocation'] == 0)
                {
                    if($allocation_id != 0){
                        $this->warehouses_model->delete_allocated_items($allocation_id);
                        $data['allocation_id'] = 0; 
                    }
                }
                $last_transaction_qty = $this->warehouses_model->get_transfer($id)->transaction_qty;
                $data['delta'] = $data['transaction_qty'] - $last_transaction_qty;
                $success = $this->warehouses_model->update_transfer($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('transfer')));
                }
                else
                    set_alert('danger', _l('warehouse_limit_warning', _l('transfer')));
                redirect(admin_url('warehouses/transfers'));
            }
        }
        if ($id == '') {
            $title = _l('add_new', _l('transfer'));
        } else {
            $data['transfer'] = $this->warehouses_model->get_transfer($id);
            $created_user = $this->staff_model->get($data['transfer']->created_user);
            $data['created_user_name'] = $created_user->firstname . ' ' . $created_user->lastname;
            if(!empty($data['transfer']->updated_user)){
               $updated_user = $this->staff_model->get($data['transfer']->updated_user);
               $data['updated_user_name'] = $updated_user->firstname . ' ' . $updated_user->lastname; 
            }
            $title = _l('edit', _l('transfer'));
        }
        $data['title']         = $title;
        $data['product_code'] = $this->warehouses_model->get_product_code();
        foreach ($data['product_code'] as $key => &$value) {
            $info = $value['product_code'].' - '.$value['product_name'];
            array_push($value, $info);
        }
        $data['warehouse_list'] = $this->warehouses_model->get_warehouse_list();
        $this->load->view('admin/warehouses/transfers/transfer', $data);
    }

    public function transfer_delete($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/transfers'));
        }
        $allocated_item_id = $this->warehouses_model->get_transfer($id)->allocation_id;
        $response = $this->warehouses_model->delete_transfer($id);
        if(!empty($allocated_item_id))
            $this->warehouses_model->delete_allocated_items($allocated_item_id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('transfer')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('transfer')));
        }
        redirect(admin_url('warehouses/transfers'));
    }

    public function get_transfers_by_product_code($id)
    {
        if ($this->input->is_ajax_request()) {
            $transfer = $this->warehouses_model->get_transfer_by_code($id);
            echo json_encode($transfer);
        }
    }

    public function get_current_warehouse($id)
    {
        if ($this->input->is_ajax_request()) {
            $warehouse = $this->warehouses_model->get_warehouse($id);
            echo json_encode($warehouse);
        }
    }
    public function allocated_items()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('allocated_items');
        }
        $data['title'] = _l('allocated_items');
        $this->load->view('admin/warehouses/allocated_items/manage', $data);
    }

    /*-----------------Barcode List---------------*/

    public function barcode_list()
    {
        if ($this->input->is_ajax_request()) {
           $this->app->get_table_data('barcode_list');
       }

        $data['products'] = $this->warehouses_model->get_product_code();
        $data['title'] = _l('barcode_list');
        $this->load->view('admin/warehouses/barcode_list/manage', $data);
    }

    public function barcode_list_manage()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['barcodelistId'] == '') {
                $success = $this->warehouses_model->add_barcode($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('Barcode'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->warehouses_model->edit_barcode($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('Barcode'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function barcode_list_delete($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/barcode_list'));
        }
        $response = $this->warehouses_model->delete_barcode($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('Barcode')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('Barcode')));
        }
        redirect(admin_url('warehouses/barcode_list'));
    }

    public function get_barcode_list_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $barcodelistByid = $this->warehouses_model->get_barcode($id);


            echo json_encode($barcodelistByid);
        }
    }

    /* Get get_barcode / ajax */
    public function get_barcode($barocde_id)
    {
        if ($this->input->is_ajax_request()) {
            $success = $this->warehouses_model->get_barcode($barocde_id);
            $message = '';
            if($success == true){
                $message = "Barode ID already Exists !";
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }else{
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function packing_list()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('packing_list');
            // $this->app->get_table_data('packing_group');
        }

        $data['title'] = _l('packing_list');
        $this->load->view('admin/warehouses/packing_list/manage', $data);
    }

    public function packing_list_manage($id = '')
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            $folderPath = "uploads/stock_lists/";
            if (move_uploaded_file($_FILES["pack_photo"]["tmp_name"], $folderPath . $_FILES["pack_photo"]["name"])) {
                $data['pack_photo'] = $folderPath . $_FILES["pack_photo"]["name"];
            }
            if ($id == '') {
                $id = $this->warehouses_model->add_packing_list($data);
                
                if ($id) {
                    if(isset($data['newitems']))
                    {
                        $group_data = $data['newitems'];
                        $group_data['packing_id'] = $id;
                        $this->warehouses_model->add_packing_group($group_data);
                    }
                    set_alert('success', _l('added_successfully', _l('packing_list and packing_group')));
                    redirect(admin_url('warehouses/packing_list'));
                }
            } else {
                $success = $this->warehouses_model->update_packing_list($data, $id);
                $current_packing_group = $this->warehouses_model->get_packing_group($id);

                if(empty($current_packing_group) && isset($data['newitems']))
                {

                    $group_data = $data['newitems'];
                    $group_data['packing_id'] = $id;
                    $this->warehouses_model->add_packing_group($group_data);
                }
                else {
                    if(isset($data['newitems']))
                    $group_data['newitems'] = $data['newitems'];
                    if(isset($data['removed_items']))
                        $group_data['removed_items'] = $data['removed_items'];
                    if(isset($data['items']))
                        $group_data['items'] = $data['items'];
                    $group_data['packing_id'] = $id;
                    $this->warehouses_model->update_packing_group($group_data);
                }
                
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('packing_list')));
                }
                redirect(admin_url('warehouses/packing_list'));
            }
        }
        if ($id == '') {
            $title = _l('add_new', _l('packing_list'));
        } else {
            $title = _l('edit', _l('packing_list'));
            $data['packing_list'] = $this->warehouses_model->get_packing_list($id);
        }

        //packing group

        $data['ajaxItems'] = false;
        if (total_rows(db_prefix() . 'stock_lists') > 0) {
            $data['items'] = $this->warehouses_model->get_grouped_packing();
        } else {
            $data['items']     = [];
            $data['ajaxItems'] = true;
        }
        if(isset($data['packing_list']))
            $data['packing_group'] = $this->warehouses_model->get_packing_group($data['packing_list']->id);
        $data['product_code'] = $this->warehouses_model->get_product_code();
        $data['stock_units'] = $this->warehouses_model->get_units();
        $data['stock_categories'] = $this->warehouses_model->get_stock_categories();
        $data['currency'] = $this->currencies_model->get();
        $data['title']         = $title;
        $this->load->view('admin/warehouses/packing_list/packing_list', $data);
    }

    public function delete_packing_list($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/packing_list'));
        }
        $response = $this->warehouses_model->delete_packing_list($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('packing_list')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('packing_list')));
        }
        redirect(admin_url('warehouses/packing_list'));
    }

    public function get_pack_by_capacity($capacity = '')
    {
        if ($this->input->is_ajax_request()) {
            $pack = $this->warehouses_model->get_pack_by_capacity($capacity);
            echo json_encode($pack);
        }
    }

    public function packing_group()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('packing_group');
        }
        $data['title'] = _l('packing_group');
        $this->load->view('admin/warehouses/packing_group/manage', $data);
    }

    public function get_packing_group_by_product()
    {
        $data = $this->input->post();
        if ($this->input->is_ajax_request()) {
            $res = $this->warehouses_model->get_packing_group_by_product($data);
            $product = $this->warehouses_model->stock_list_get($data['product_id'])->product_name;
            echo json_encode([
                'default_check' => $res,
                'msg' => $product .' is already set as default'
            ]);
        }
    }

    /* Get stock item by id in packing group/ ajax */
    public function get_item_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $item = $this->warehouses_model->get_stocks_with_unit($id);
            echo json_encode($item);
        }
    }

    public function get_item_by_id_with_currency($id)
    {
        if ($this->input->is_ajax_request()) {
            $item = $this->warehouses_model->get_item_by_id_with_currency($id);
            echo json_encode($item);
        }
    }

    public function get_item_by_id_with_relation($id)
    {
        if ($this->input->is_ajax_request()) {
            $item = $this->warehouses_model->get_item_by_id_with_relation($id);
            echo json_encode($item);
        }
    }

    public function purchase_receiving_bay()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('purchase_receiving_bay');
        }
        $data['title'] = _l('purchase_receiving_bay');
        $this->load->view('admin/warehouses/purchase_receiving_bay/manage', $data);
    }

    public function manage_purchase_receiving_bay($id = '')
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($id == '') {

                $id = $this->purchases_model->add_purchase_order($data);

                if(isset($data['newitems']))
                {
                    $purchase_order_item = $data['newitems'];
                    $purchase_order_item['rel_purchase_id'] = $id;
                    $purchase_order_item['product_id'] = $data['product_id'];
                    $transfer_on_received['purchase_id'] = $data['purchase_phase_id'];
                    $transfer_on_received['product_id'] = $data['product_id']; 
                    $this->purchases_model->add_purchase_order_item($purchase_order_item,$transfer_on_received);
                }

                if ($id) {
                    set_alert('success', _l('added_successfully', _l('purchase_order')));
                    redirect(admin_url('warehouses/purchase_receiving_bay'));
                }
            } else {
                
                $success = $this->purchases_model->update_purchase_order($data, $id);

                $current_purchase_item = $this->purchases_model->get_purchase_order_item($id);
                if(empty($current_purchase_item) && isset($data['newitems']))
                {
                    $purchase_order_item = $data['newitems'];
                    $purchase_order_item['rel_purchase_id'] = $id;
                    $purchase_order_item['product_id'] = $data['product_id'];
                    $transfer_on_received['purchase_id'] = $data['purchase_phase_id'];
                    $transfer_on_received['product_id'] = $data['product_id'];
                    $this->purchases_model->add_purchase_order_item($purchase_order_item,$transfer_on_received);
                }
                else {
                    if(isset($data['newitems']))
                        $purchase_order_item['newitems'] = $data['newitems'];
                    if(isset($data['removed_items']))
                        $purchase_order_item['removed_items'] = $data['removed_items'];
                    if(isset($data['items']))
                        $purchase_order_item['items'] = $data['items'];
                    $purchase_order_item['rel_purchase_id'] = $id;
                    $transfer_on_received['purchase_id'] = $data['purchase_phase_id'];
                    $transfer_on_received['product_id'] = $data['product_id'];
                    $this->purchases_model->update_purchase_order_item($purchase_order_item,$transfer_on_received);

                }
                
                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('purchase_order')));
                }
                redirect(admin_url('warehouses/purchase_receiving_bay'));
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
        // $data['purchase_id'] = $this->purchases_model->get_purchase_id_by_order_no(2);
        $data['purchase_id'] = $this->purchases_model->get_purchase_id();
        $data['product_code'] = $this->purchases_model->get_product_code();
        $data['title']         = $title;
        $data['units'] = $this->warehouses_model->get_units();
        $this->load->view('admin/warehouses/purchase_receiving_bay/purchase_receiving_bay', $data);
        // $this->load->view('admin/purchases/purchase_order/purchase_order', $data);
    }

    public function purchase_request()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('purchase_request');
        }
        $data['title'] = _l('purchase_request');
        $this->load->view('admin/warehouses/purchase_request/manage', $data);
    }

    public function manage_purchase_request($id = '')
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
                    redirect(admin_url('warehouses/purchase_request'));
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
                redirect(admin_url('warehouses/purchase_request'));
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
        $data['purchase_id'] = $this->purchases_model->get_purchase_id_by_order_no(3);
        $data['product_code'] = $this->purchases_model->get_product_code();
        $data['units'] = $this->warehouses_model->get_units();
        $data['title']         = $title;
        $this->load->view('admin/warehouses/purchase_request/purchase_request', $data);
    }

    public function delete_purchase_request($id)
    {
        if (!$id) {
            redirect(admin_url('warehouses/purchase_request'));
        }
        $response = $this->purchases_model->delete_purchase_order($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('purchase_request')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('purchase_request')));
        }
        redirect(admin_url('warehouses/purchase_request'));
    }

    public function update_original_price()
    {
        $data = $this->input->post();
        $res = $this->warehouses_model->update_original_price($data);
        echo json_encode($res);
    }

    public function dispatching_bay_list($id = ''){
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('dispatching_bay');
        }

        $data['title'] = _l('work_orders');
        $data['google_ids_calendars'] = $this->misc_model->get_google_calendar_ids();
        $data['google_calendar_api']  = get_option('google_calendar_api_key');
        $data['title']                = _l('calendar');
        add_calendar_assets();
        $this->load->view('admin/warehouses/dispatching_bay/manage', $data);
    }

    public function dispatching_bay($id = '')
    {
        $this->load->model('invoices_model');
        $this->load->model('estimates_model');
        $this->load->model('credit_notes_model');
        $this->load->model('utilities_model');
        $this->load->model('manufacturing_settings_model');
        if ($this->input->post()) {
            $invoice_data = $this->input->post();
            if ($id == '') {
                if (!has_permission('invoices', '', 'create')) {
                    access_denied('invoices');
                }
                $id = $this->invoices_model->add($invoice_data);
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('work_order')));
                    $redUrl = admin_url('installation/work_order/' . $id);

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
                unset($invoice_data['select_all']);

                if(isset($invoice_data['wo_items'])){
                    $wo_items = $invoice_data['wo_items'];
                    unset($invoice_data['wo_items']);
                }
                $success = $this->invoices_model->update($invoice_data, $id);
                $wo_item_sucess = $this->invoices_model->update_rel_wo_items_dispatch($wo_items,$id,$invoice_data['transfer_out']);

                if(isset($recipe_removed))
                    $this->invoices_model->delete_recipe_items($recipe_removed);

                if ($success) {
                    set_alert('success', _l('updated_successfully', _l('work_order')));
                } else if ($wo_item_sucess) {
                    set_alert('success', _l('updated_successfully', _l('work_order')));
                } 
                redirect(admin_url('warehouses/dispatching_bay/' . $id));
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
            
            $wo_product_ids = [];
            foreach ($data['rel_wo_items'] as $wo) {
                array_push($wo_product_ids, $wo['rel_product_id']);
            }
            $data['installation_plan_recipes'] = $this->invoices_model->get_installation_plan_recipes($id,$wo_product_ids);
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
        $this->load->view('admin/warehouses/dispatching_bay/invoice', $data);
    }

    public function quick_purchase_request()
    {
        if ($this->input->is_ajax_request()) {
            $data = $_POST;
            $plan_item = $data['plan_item'];
            unset($data['plan_item']);
            $id = $this->purchases_model->add_purchase_order($data);
            $purchase_order_item = $data['newitems'];
            $purchase_order_item['rel_purchase_id'] = $id;
            $success = $this->purchases_model->add_purchase_order_item($purchase_order_item);
            if ($success == true) {
                
                // $approval_date = $this->db->query('SELECT approval_date FROM tblpurchase_order WHERE `id` ='.$id)->row()->approval_date;
                // $plan_recipe['arrival_date'] = date("Y-m-d", strtotime($approval_date));
                $plan_recipe['quick_purchased'] = $id;
                $this->db->where('id',$plan_item);
                $this->db->update(db_prefix() . 'plan_recipe', $plan_recipe);
                $message = _l('added_successfully', _l('purchase_request'));
            }
            echo json_encode([
                'success' => $success,
                'message' => $message,
                // 'approval_date' => date("Y-m-d", strtotime($approval_date))
            ]);
        }
    }
}