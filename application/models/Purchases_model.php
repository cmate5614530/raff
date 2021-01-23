<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Purchases_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function add_phase($data)
    {
    	unset($data['purchaseOrderPhaseid']);
        $this->db->insert(db_prefix() . 'purchase_order_phases', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Purchase Order Phase Added [ID: ' . $data['phase'] . ']');

            return true;
        }

        return false;
    }

    public function edit_phase($data)
    {
        $purchaseOrderPhaseid = $data['purchaseOrderPhaseid'];
        unset($data['purchaseOrderPhaseid']);
        $this->db->where('id', $purchaseOrderPhaseid);
        $this->db->update(db_prefix() . 'purchase_order_phases', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Purchase Order Phase Updated [' . $data['phase'] . ']');

            return true;
        }

        return false;
    }

    public function add_purchase_order($data)
    {

        unset($data['item_select']);
        unset($data['item_id']);
        unset($data['product_name']);
        unset($data['ordered_qty']);
        unset($data['received_qty']);
        unset($data['unit']);
        unset($data['product_id']);
        unset($data['price']);
        unset($data['volume']);
        unset($data['item_order']);
        unset($data['newitems']);
        unset($data['notes']);
        unset($data['description']);

    	$data['created_user'] = get_staff_user_id();
        $data['created_at'] = date('Y-m-d h:i:s');
        $data['updated_at'] = date('Y-m-d h:i:s');
        if(!empty($data['approval_date']))
            $data['approval_date'] = date("Y-m-d", strtotime($data['approval_date']));
        else
            $data['approval_date'] = NULL;
        // print_r($data); exit();
        $this->db->insert(db_prefix() . 'purchase_order', $data);
        $insert_id = $this->db->insert_id();

        if ($insert_id) {
            log_activity('New Purchase Order Added [ID: ' . $insert_id . ']');
            $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE purchase_email_permission=1')->result_array();
            if($data['approval'] == 1)
                foreach ($allowed_staffs as $key => $staff) {
                    $success = send_mail_template('pending_purchase_request_opened', $staff['email'], $staff['staffid'], $insert_id);
                }
            else 
                foreach ($allowed_staffs as $key => $staff) {
                    $success = send_mail_template('purchase_opened', $staff['email'], $staff['staffid'], $insert_id);
                }
            return $insert_id;
        }
        return false;
    }

    public function update_purchase_order($data,$id)
    {
        unset($data['item_select']);
        unset($data['item_id']);
        unset($data['product_name']);
        unset($data['ordered_qty']);
        unset($data['received_qty']);
        unset($data['unit']);
        unset($data['product_id']);
        unset($data['price']);
        unset($data['volume']);
        unset($data['item_order']);
        unset($data['newitems']);
        unset($data['removed_items']);
        unset($data['items']);
        unset($data['notes']);
        unset($data['description']);
        unset($data['created_user']);
        $data['updated_user'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');
        
        if(!empty($data['approval_date']))
            $data['approval_date'] = date("Y-m-d", strtotime($data['approval_date']));
        else
            $data['approval_date'] = NULL;
        $this->db->where('id',$id);
        $this->db->update(db_prefix() . 'purchase_order', $data);

        if ($this->db->affected_rows() > 0) {
            log_activity('Purchase Order Updated [' . $id . ']');
            
            $this->db->where('quick_purchased',$id);
            $quick_purchased_plan_recipe = $this->db->get(db_prefix().'plan_recipe')->row();
            if(!empty($quick_purchased_plan_recipe)){
                $plan_recipe['arrival_date'] = $data['approval_date'];
                $this->db->where('quick_purchased',$id);
                $this->db->update(db_prefix() . 'plan_recipe', $plan_recipe);
            }
            return true;
        }
        return false;
    }

    public function get_purchase_order($id)
    {
        $this->db->from(db_prefix() . 'purchase_order');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'purchase_order.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_acc_list()
    {
    	$this->db->order_by('company', 'asc');
        return $this->db->get(db_prefix() . 'clients')->result_array();
    }

    public function get_purchase_id()
    {
        $this->db->order_by('id', 'asc');
        return $this->db->get(db_prefix() . 'purchase_order_phases')->result_array();

    }

    public function get_purchase_id_by_order_no($order_no)
    {
        $this->db->order_by('id', 'asc');
        $this->db->where('order_no',$order_no);
        return $this->db->get(db_prefix() . 'purchase_order_phases')->result_array();

    }

    public function get_product_code()
    {
        $this->db->order_by('product_code', 'asc');
        return $this->db->get(db_prefix() . 'stock_lists')->result_array();

    }

    public function delete_purchase_order($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'purchase_order');
        if ($this->db->affected_rows() > 0) {
            log_activity('Purchase Deleted [' . $id . ']');
            return true;
        }
        return false;
    }

    public function add_purchase_order_item($data, $transfer_data = [])
    {
        $rel_purchase_id = $data['rel_purchase_id'];
        unset($data['rel_purchase_id']);
        unset($data['product_id']);
        foreach ($data as $val) {
            $temp = [];
            $temp = $val;
            if(!empty($val['received_qty']))
            {
                $transfer = [];
                $transfer['stock_product_code'] = $val['product_id'];
                $transfer['purchase_id'] = $rel_purchase_id;
                $transfer['transaction_from'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 1')->row()->id;
                $transfer['transaction_to'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 2')->row()->id;
                $transfer['transaction_notes'] = $val['notes'];
                $transfer['transaction_qty'] = $val['received_qty'];
                $transfer['date_and_time'] = date('Y-m-d h:i:s');
                $this->load->model('warehouses_model');
                $transfer_id = $this->warehouses_model->add_transfer($transfer);
            }
            if(isset($transfer_id) && !is_null($transfer_id))
                    $temp['transfer_id'] = $transfer_id;
            $temp['rel_purchase_id'] = $rel_purchase_id;
            unset($temp['item_id']);
            $this->db->insert(db_prefix() . 'purchase_order_item', $temp);
            $insert_id = $this->db->insert_id();
            return true;
        }
        return false;
    }

    public function update_purchase_order_item($data,$transfer_data = [])
    {
        $rel_purchase_id = $data['rel_purchase_id'];
        if(isset($data['newitems']))
        {
            $newitems = $data['newitems'];
            foreach ($newitems as $val) {
                if(!empty($val['received_qty']))
                {
                    $transfer = [];
                    $transfer['stock_product_code'] = $val['product_id'];
                    $transfer['purchase_id'] = $rel_purchase_id;
                    $transfer['transaction_notes'] = 'S.AL-'.$rel_purchase_id;
                    $transfer['transaction_from'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 1')->row()->id;
                    $transfer['transaction_to'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 2')->row()->id;
                    $transfer['transaction_qty'] = $val['received_qty'];
                    $transfer['date_and_time'] = date('Y-m-d h:i:s');
                    $this->load->model('warehouses_model');
                    $transfer_id = $this->warehouses_model->add_transfer($transfer);
                }
                unset($val['item_id']);
                $val['rel_purchase_id'] = $rel_purchase_id;
                
                if(isset($transfer_id))
                    $val['transfer_id'] = $transfer_id;
                $this->db->insert(db_prefix() . 'purchase_order_item', $val);
                $insert_id = $this->db->insert_id();
                }
        }
        
        if(isset($data['items'])){
            $items = $data['items'];
            foreach ($items as $key => $val) {
                $id = $val['itemid'];
                unset($val['itemid']);
                if(!empty($val['received_qty']))
                {
                    if(empty($val['transfer_id']))
                    {
                        $transfer = [];
                        $transfer['stock_product_code'] = $val['product_id'];
                        $transfer['purchase_id'] = $rel_purchase_id;
                        $transfer['transaction_notes'] = 'S.AL-'.$rel_purchase_id;
                        $transfer['transaction_from'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 1')->row()->id;
                        $transfer['transaction_to'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 2')->row()->id;
                        $transfer['transaction_qty'] = $val['received_qty'];
                        $transfer['date_and_time'] = date('Y-m-d h:i:s');
                        $this->load->model('warehouses_model');
                        $transfer_id = $this->warehouses_model->add_transfer($transfer);
                        $val['transfer_id'] = $transfer_id;
                    }
                    else
                    {
                        $transfer_id = $this->db->query('SELECT transfer_id FROM tblpurchase_order_item WHERE `id`='.$id)->row()->transfer_id;
                        $last_qty = $this->db->query('SELECT received_qty FROM tblpurchase_order_item WHERE `id`='.$id)->row()->received_qty;
                        $transfer = [];
                        $transfer['stock_product_code'] = $val['product_id'];
                        $transfer['purchase_id'] = $rel_purchase_id;
                        $transfer['transaction_from'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 1')->row()->id;
                        $transfer['transaction_to'] = $this->db->query('SELECT id FROM tblwarehouses WHERE `order_no`= 2')->row()->id;
                        // $transfer['transaction_notes'] = $val['notes'];
                        $transfer['transaction_notes'] = 'S.AL-'.$rel_purchase_id;
                        $transfer['transaction_qty'] = $val['received_qty']-$last_qty;
                        $transfer['date_and_time'] = date('Y-m-d h:i:s');
                        // $transfer['delta'] = $val['received_qty']-$last_qty;
                        $this->load->model('warehouses_model');
                        // $this->warehouses_model->update_transfer($transfer,$transfer_id);
                        $transfer_id = $this->warehouses_model->add_transfer($transfer);
                        $val['transfer_id'] = $transfer_id;
                    }
                    
                }
                $this->db->where('id',$id);
                $this->db->update(db_prefix() . 'purchase_order_item', $val);
            }
        }
        

        if(isset($data['removed_items'])){
            $removed_items = $data['removed_items'];
            foreach ($removed_items as $val) {
                $this->db->where('id',$val);
                $this->db->delete(db_prefix() . 'purchase_order_item');
            }
        }
        
    }

    public function get_purchase_order_item($id)
    {
        $this->db->from(db_prefix() . 'purchase_order_item');
        $this->db->join(db_prefix() .'units',db_prefix() .'units.unitid = '. db_prefix() . 'purchase_order_item.unit','left');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'purchase_order_item.rel_purchase_id', $id);
            return $this->db->get()->result_array();
        }
    }
}