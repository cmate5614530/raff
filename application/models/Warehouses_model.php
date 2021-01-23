<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Warehouses_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @param array $_POST data
     * @return boolean
     */
    public function warehouse_add($data)
    {
        unset($data['warehouseid']);
        // $data['name'] = strtoupper($data['name']);
        $this->db->insert(db_prefix() . 'warehouses', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Warehouse Added [ID: ' . $data['warehouse_name'] . ']');
            return true;
        }
        return false;
    }

    /**
     * @param  array $_POST data
     * @return boolean
     * Update currency values
     */
    public function warehouse_edit($data)
    {
        $warehouseid = $data['warehouseid'];
        unset($data['warehouseid']);
        // $data['name'] = strtoupper($data['name']);
        $this->db->where('id', $warehouseid);
        $this->db->update(db_prefix() . 'warehouses', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Warehouse Updated [' . $data['warehouse_name'] . ']');

            return true;
        }

        return false;
    }

    /**
     * @param  integer ID
     * @return mixed
     * Delete currency from database, if used return array with key referenced
     */
    public function warehouse_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'warehouses');
        if ($this->db->affected_rows() > 0) {
           log_activity('Warehouse Deleted [' . $id . ']');
            return true;
        }
        return false;
    }

    public function get_warehouse($id)
    {
        $this->db->from(db_prefix() . 'warehouses');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'warehouses.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }
    
    /* Begin of Stock Category */
    public function stock_category_add($data)
    {
        unset($data['stockId']);
        // print_r($data); exit();
        $this->db->insert(db_prefix() . 'stock_categories', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Installation Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function stock_category_edit($data)
    {
        $installation_id = $data['stockId'];
        unset($data['stockId']);
        $this->db->where('id', $installation_id);
        $this->db->update(db_prefix() . 'stock_categories', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Installation Updated [' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function stock_category_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'stock_categories');
        if ($this->db->affected_rows() > 0) {

            log_activity('Installation Deleted [' . $id . ']');

            return true;
        }

        return false;
    }
    /* End of Stock Category */

    /* Begin of Stock Unit */
    public function stock_unit_add($data)
    {
        unset($data['stock_unit_id']);
        $this->db->insert(db_prefix() . 'units', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Installation Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function stock_unit_edit($data)
    {
        $installation_id = $data['stock_unit_id'];
        unset($data['stock_unit_id']);
        $this->db->where('unitid', $installation_id);
        $this->db->update(db_prefix() . 'units', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Installation Updated [' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function change_unit_status($id, $status)
    {
        $this->db->where('unitid', $id);
        $this->db->update(db_prefix() . 'units', [
            'active' => $status,
        ]);

        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('unit_status_changed', [
                'id'     => $id,
                'status' => $status,
            ]);

            log_activity('Unit Status Changed [ID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');

            return true;
        }

        return false;
    }
    /* End of Stock Unit */

    /* Begin of Stock List*/
    public function get_units()
    {
        $this->db->order_by('name', 'asc');
        $this->db->where('active',1);
        return $this->db->get(db_prefix() . 'units')->result_array();
    }

    public function get_stock_categories()
    {
        $this->db->order_by('name', 'asc');

        return $this->db->get(db_prefix() . 'stock_categories')->result_array();
    }

    public function get_stock_categories_finished()
    {
        $this->db->where('order_no', 2);
        $this->db->or_where('order_no',3);
        return $this->db->get(db_prefix() . 'stock_categories')->result_array();
    }

    public function get_currency_exchange()
    {
        $this->db->order_by('name', 'asc');

        return $this->db->get(db_prefix() . 'currencies_exchange')->result_array();
    }

    public function stock_list_add($data){

        // if(isset($data['warning']))
        //     $warning_data = $data['warning'];
        unset($data['stocklistId']);
        // unset($data['warning']);
        $data['created_by'] = get_staff_user_id();
        $data['created_at'] = date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'stock_lists', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Item Added [ID: ' . $data['product_name'] . ']');

            $this->db->where('stock_id', $insert_id);
            $this->db->delete(db_prefix() . 'stock_level_warning');
            // foreach ($warning_data as $key => $warning) {
            //     if(isset($warning['warning_enable']))
            //     {
            //         unset($warning['warning_enable']);
            //         $warning['stock_id'] = $insert_id;
            //         $this->db->insert(db_prefix().'stock_level_warning',$warning);
            //     }
            // }

            return true;
        }
        return false;
    }

    public function stock_list_edit($data)
    {
        $stock_list_Id = $data['stocklistId'];
        $warning_data = $data['warning'];
        unset($data['stocklistId']);
        unset($data['warning']);
        $data['updated_by'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->where('id', $stock_list_Id);
        $this->db->update(db_prefix() . 'stock_lists', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Item Updated [' . $data['product_name'] . ']');

            $this->db->where('stock_id', $stock_list_Id);
            $this->db->delete(db_prefix() . 'stock_level_warning');
            
            foreach ($warning_data as $key => $warning) {
                if(isset($warning['warning_enable']))
                {
                    unset($warning['warning_enable']);
                    $warning['stock_id'] = $stock_list_Id;
                    $this->db->insert(db_prefix().'stock_level_warning',$warning);
                }
            }
            $this->db->query('UPDATE '.db_prefix().'product_recipe SET ingredient_currency_id='.$data['currency_id'].' WHERE ingredient_item_id='.$stock_list_Id);

            $op_cost_per_sec = $this->db->get(db_prefix().'operation_cost')->row();
            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();

            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $material_cost = $data['price']*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    $this->db->query('Update '.db_prefix().'product_recipe set material_cost ='.$material_cost.' where id='.$value['id']);
                    $amount += $material_cost + $value['production_cost'] + $value['expected_profit'];
                }
                $ins_cost = $op_cost_per_sec->op_cost_per_sec* $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
            }
            return true;
        }
        return false;
    }

    public function update_product_price($data)
    {
        $id = $data['id'];
        $product_list_price = $data['product_list_price'];
        $this->db->query('UPDATE '.db_prefix().'stock_lists SET product_list_price ='.$product_list_price.' WHERE id='.$id );
        return $this->stock_list_get($id);
    }

    public function stock_list_get($id = '')
    {

        $this->db->from(db_prefix() . 'stock_lists');
        $this->db->join(db_prefix() . 'stock_categories', '' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category', 'left');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'stock_lists.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_stocks_with_unit($id = '')
    {
        $this->db->from(db_prefix() . 'stock_lists');
        $this->db->join(db_prefix() .'units',db_prefix() .'units.unitid = '. db_prefix() . 'stock_lists.unit','left');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'stock_lists.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_item_by_id_with_currency($id = '')
    {
        return $this->db->query('SELECT tblstock_lists.*, tblcurrencies.`rate` FROM tblstock_lists LEFT JOIN tblcurrencies ON tblcurrencies.id = tblstock_lists.`currency_id` WHERE tblstock_lists.id ='.$id)->row();
    }

    public function get_item_by_id_with_relation($id = '')
    {
        // return $this->db->query('SELECT tblstock_lists.*, tblcurrencies_exchange.`rate` FROM tblstock_lists LEFT JOIN tblcurrencies_exchange ON tblcurrencies_exchange.id = tblstock_lists.`currency_id` WHERE tblstock_lists.id ='.$id)->row(); 
        $default_pack = $this->db->query('SELECT * from tblpackage_group where product_id='.$id.' AND default_pack = 1')->row();

        $stock_data = $this->db->query('SELECT * FROM tblstock_lists  WHERE id ='.$id)->row();
        $pack_list = $this->db->query('SELECT pack_capacity from tblpackage_group left join tblpack_list on tblpack_list.`id` =tblpackage_group.`packing_id` where product_id='.$id)->result_array();

        if (!empty($default_pack)){
            $default_pack_id = $default_pack->packing_id;
            $default_pack_data = $this->db->query('SELECT * FROM tblpack_list  WHERE id ='.$default_pack_id)->row();
            // $pack_capacity = $this->db->query('SELECT pack_capacity From '.db_prefix().'package_group WHERE packing_id='.$default_pack->packing_id.' AND default_pack = 1')->row();
            $pack_capacity = $default_pack->pack_capacity;

            return $data = [
                'stock' => $stock_data,
                'pack_list' => $pack_list,
                // 'default_pack' => $default_pack_data
                'default_pack_capacity' => $pack_capacity
            ];
        } else {
            return $data = [
                'stock' => $stock_data,
                'pack_list' => $pack_list,
                // 'pack_list' => NULL,
                'default_pack_capacity' => NULL
            ];
        }
    }
    
    public function stock_list_delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'stock_lists');
        if ($this->db->affected_rows() > 0) {
            log_activity('Item Deleted [' . $id . ']');
            return true;
        }
        return false;
    }
    /* End of Stock List*/


    /* ------------------Transfer----------------- */
    public function add_transfer($data)
    {
        
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        // print_r($warehouse_data); exit();
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {  
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $first_transfer_check = $this->get_warehouse($data['transaction_from'])->order_no;
        $last_stock_level = $this->stock_list_get($data['stock_product_code'])->stock_level;
        $updated_stock_level = $last_stock_level + $data['transaction_qty'];
        $pack_id = $this->stock_list_get($data['stock_product_code'])->pack_id;
        if($first_transfer_check == 1)
        {
            $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_stock_level.' WHERE `id` ='.$data['stock_product_code']);
            if(!empty($pack_id))
                $this->db->query('UPDATE tblpack_list SET stock_qty = '.$updated_stock_level.' WHERE `id` ='.$pack_id);
        }

        $data['created_user'] = get_staff_user_id();
        $data['created_at'] = date('Y-m-d h:i:s');
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'transfer_lists', $data);
        $insert_id = $this->db->insert_id();

        $this->db->from(db_prefix() . 'transfer_lists');
        $this->db->where('stock_product_code',$data['stock_product_code']);
        $qty = $this->db->get()->result_array();
        $total_qty = 0;
        foreach ($qty as $val) {
            $total_qty = $total_qty + $val['transaction_qty'];
        }

        if ($insert_id) {
            log_activity('New Tansfer Added [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function add_transfer_by_production($data,$sign)
    {
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            $success = send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $last_stock_level = $this->stock_list_get($data['stock_product_code'])->stock_level;
        if($sign == 1)
            $updated_stock_level = $last_stock_level + $data['transaction_qty'];
        elseif($sign == -1)
            $updated_stock_level = $last_stock_level - $data['transaction_qty'];

        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_stock_level.' WHERE `id` ='.$data['stock_product_code']);
        $data['created_user'] = get_staff_user_id();
        $data['created_at'] = date('Y-m-d h:i:s');
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'transfer_lists', $data);
        $insert_id = $this->db->insert_id();

        if ($insert_id) {
            log_activity('New Tansfer Added [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function add_transfer_by_pack($data,$pack_id)
    {
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            $success = send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $last_stock = $this->db->query('SELECT * from tblstock_lists where pack_id='.$pack_id)->row();
        if(!empty($last_stock))
            $last_stock_level = $last_stock->stock_level;
        else 
            $last_stock_level = 0;
        $updated_stock_level = $last_stock_level - $data['transaction_qty'];

        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_stock_level.' WHERE `pack_id` ='.$pack_id);
        $this->db->query('UPDATE tblpack_list SET stock_qty = '.$updated_stock_level.' WHERE `id` ='.$pack_id);
        $data['created_user'] = get_staff_user_id();
        $data['created_at'] = date('Y-m-d h:i:s');
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'transfer_lists', $data);
        $insert_id = $this->db->insert_id();

        if ($insert_id) {
            log_activity('New Tansfer Added [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_transfer($data,$id)
    {
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            $success = send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $first_transfer_check = $this->get_warehouse($data['transaction_from'])->order_no;
        $last_stock_level = $this->stock_list_get($data['stock_product_code'])->stock_level;
        $updated_transfer = $data['transaction_qty'];
        
        if(isset($data['delta']))
        {
            $updated_transfer = $last_stock_level + $data['delta'];
            unset($data['delta']);
        }
        
        $pack_id = $this->stock_list_get($data['stock_product_code'])->pack_id;
        if($first_transfer_check == 1)
        {
            $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_transfer.' WHERE `id` ='.$data['stock_product_code']);
            if(!empty($pack_id))
                $this->db->query('UPDATE tblpack_list SET stock_qty = '.$updated_transfer.' WHERE `id` ='.$pack_id);
        }
        unset($data['created_user']);
        unset($data['updated_user']);
        $data['updated_user'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'transfer_lists', $data);

        if ($this->db->affected_rows() > 0) {
            log_activity('Tansfer Updated [' . $id . ']');

            return true;
        }

        return false;
    }

    public function update_transfer_by_production($data,$id)
    {
        // $warning_data = $this->db->query('SELECT * from '.db_prefix().'stock_level_warning where stock_id='.$data['stock_product_code'])->result_array();
        
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            $success = send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $last_stock_level = $this->stock_list_get($data['stock_product_code'])->stock_level;
        $updated_transfer = $data['transaction_qty'];
        
        if(isset($data['delta']))
        {
            $updated_transfer = $last_stock_level + $data['delta'];
            unset($data['delta']);
        }
        
        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_transfer.' WHERE `id` ='.$data['stock_product_code']);
        unset($data['created_user']);
        unset($data['updated_user']);
        $data['updated_user'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'transfer_lists', $data);

        if ($this->db->affected_rows() > 0) {
            log_activity('Tansfer Updated [' . $id . ']');

            return true;
        }

        return false;
    }

    public function update_transfer_by_pack($data,$id,$pack_id)
    {
        $warehouse_data = $this->get_transfer_by_code($data['stock_product_code']);
        foreach ($warehouse_data as $key => $w_data) {
            if($w_data->warehouse_id == $data['transaction_from'])
            { 
                if(isset($w_data->limit))
                {
                    if($w_data->qty - $data['transaction_qty'] < $w_data->limit)
                    {
                        $allowed_staffs = $this->db->query('SELECT * From tblstaff WHERE stock_warning_email_permission=1')->result_array();
                        foreach ($allowed_staffs as $key => $staff) {
                            $success = send_mail_template('stock_warning', $staff['email'], $staff['staffid'], $data['stock_product_code'],$data['transaction_from']);
                        }
                        // return false;
                    }
                }
            }
        }

        $last_stock = $this->db->query('SELECT * from tblstock_lists where pack_id='.$pack_id)->row();
        if(!empty($last_stock))
            $last_stock_level = $last_stock->stock_level;
        else 
            $last_stock_level = 0;

        $updated_transfer = $data['transaction_qty'];
        
        if(isset($data['delta']))
        {
            $updated_transfer = $last_stock_level - $data['delta'];
            unset($data['delta']);
        }

        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_transfer.' WHERE `pack_id` ='.$pack_id);
        $this->db->query('UPDATE tblpack_list SET stock_qty = '.$updated_transfer.' WHERE `id` ='.$pack_id);
        unset($data['created_user']);
        unset($data['updated_user']);
        $data['updated_user'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');
        // print_r($id); exit();
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'transfer_lists', $data);

        if ($this->db->affected_rows() > 0) {
            log_activity('Tansfer Updated [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_transfer($id)
    {
        $this->db->from(db_prefix() . 'transfer_lists');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'transfer_lists.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_transfer_by_code($id)
    {
        if (is_numeric($id)) {
            $warehouses = $this->db->query('SELECT id FROM tblwarehouses')->result_array();
            $warehouse_arr = [];
            foreach ($warehouses as $key => $value) {
                array_push($warehouse_arr, $value['id']);
            }

            $res = [];
            
            foreach ($warehouse_arr as $key => $value) {
                $name = $this->db->query('SELECT warehouse_name FROM tblwarehouses WHERE `id`='.$value)->row()->warehouse_name;
                $order_no = $this->db->query('SELECT order_no FROM tblwarehouses WHERE `id`='.$value)->row()->order_no;
                $to = $this->db->query('SELECT SUM(transaction_qty) as to_sum FROM tbltransfer_lists WHERE `transaction_to`='.$value.' AND `allocation`=0 AND `stock_product_code`='.$id)->row();
                $from = $this->db->query('SELECT SUM(transaction_qty) as to_sum FROM tbltransfer_lists WHERE `transaction_from`='.$value.' AND `stock_product_code`='.$id)->row();
                if(empty($to)) $to = 0;
                if(empty($from)) $from = 0;

                $diff = $to->to_sum - $from->to_sum;
                $warning = $this->db->query('SELECT * FROM tblstock_level_warning WHERE `warehouse_id`='.$value.' AND `stock_id`='.$id)->row();

                if(empty($warning))
                    $obj = (object)[
                        'warehouse_id' => $value,
                        'warehouse' => $name,
                        'qty' => $diff,
                        'order_no' => $order_no
                    ];
                else 
                    $obj = (object)[
                        'warehouse_id' => $value,
                        'warehouse' => $name,
                        'qty' => $diff,
                        'order_no' => $order_no,
                        'limit' => $warning->limit
                    ];
                array_push($res, $obj);
            }
            return $res;
        }
        return $this->db->get()->result_array();
    }

    public function get_product_code()
    {
        $this->db->order_by('product_code', 'asc');
        return $this->db->get(db_prefix() . 'stock_lists')->result_array();
    }


    public function get_warehouse_list()
    {
        $this->db->order_by('order_no', 'asc');
        return $this->db->get(db_prefix() . 'warehouses')->result_array();
    }

    public function delete_transfer($id)
    {
        
        $transfer = $this->get_transfer($id);
        $first_transfer_check = $this->get_warehouse($transfer->transaction_from)->order_no;
        if($first_transfer_check == 1)
        {
            $current_stock_level = $this->db->query('SELECT stock_level FROM '.db_prefix().'stock_lists WHERE id='.$transfer->stock_product_code)->row()->stock_level;
            $updated_stock_level = $current_stock_level - $transfer->transaction_qty;
            $this->db->query('UPDATE tblstock_lists SET stock_level = '.$updated_stock_level.' WHERE `id` ='.$transfer->stock_product_code);
        }
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'transfer_lists');
        if ($this->db->affected_rows() > 0) {

            log_activity('Transfer Deleted [' . $id . ']');

            return true;
        }

        return false;
    }


    public function add_allocated_items($data)
    {
        $current_stock_level = $this->db->query('SELECT stock_level FROM '.db_prefix().'stock_lists WHERE id='.$data['allocation_product_code'])->row()->stock_level;
        $stock_level_minus = $current_stock_level - $data['stock_quantity'];
        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$stock_level_minus.' WHERE `id` ='.$data['allocation_product_code']);

        $data['created_at']=date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'allocated_items', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Allocated Items Added [ID: ' .$insert_id . ']');
            return $insert_id;
        }
        return false;
    }

    public function update_allocated_items($data, $id){
        
        $current_stock_level = $this->db->query('SELECT stock_level FROM '.db_prefix().'stock_lists WHERE id='.$data['allocation_product_code'])->row()->stock_level;
        $last_allocated_qty = $this->db->query('SELECT stock_quantity FROM '.db_prefix().'allocated_items WHERE id='.$id)->row()->stock_quantity;
        $stock_level_minus = $current_stock_level - $data['stock_quantity'] + $last_allocated_qty;
        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$stock_level_minus.' WHERE `id` ='.$data['allocation_product_code']);

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'allocated_items', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Allocated Item Updated [' . $allocateItem_id . ']');
            return true;
        }
        return false;
    }

    public function delete_allocated_items($id)
    {
        $last_allocated_qty = $this->db->query('SELECT * FROM '.db_prefix().'allocated_items WHERE id='.$id)->row()->stock_quantity;
        $last_allocation_product_code = $this->db->query('SELECT * FROM '.db_prefix().'allocated_items WHERE id='.$id)->row()->allocation_product_code;

        $current_stock_level = $this->db->query('SELECT stock_level FROM '.db_prefix().'stock_lists WHERE id='.$last_allocation_product_code)->row()->stock_level;
        $stock_level_recover = $current_stock_level  + $last_allocated_qty;
        $this->db->query('UPDATE tblstock_lists SET stock_level = '.$stock_level_recover.' WHERE `id` ='.$last_allocation_product_code);
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'allocated_items');
        if ($this->db->affected_rows() > 0) {

            log_activity('Allocated Item Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_allocated_item_amount_by_product($product_id)
    {
       $this->db->from(db_prefix().'allocated_items');
       $this->db->where('allocation_product_code',$product_id);
       $allocated_items = $this->db->get()->result_array();
       $sum = 0;      
       foreach ($allocated_items as $key => $value) {
            $sum += $value['stock_quantity'];
       }
       return $sum;
    }

    public function get_barcode($id = '')
    {
        $this->db->from(db_prefix() . 'barcode_list');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'barcode_list.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function add_barcode($data)
    {
        unset($data['barcodelistId']);
        $data['created_by']=get_staff_user_id();
        $data['created_at']=date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'barcode_list', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('Barcode Added [ID: ' . $data['barcode_id'] . ']');
            return true;
        }
        return false;
    }

    public function edit_barcode($data)
    {
        $barcode_list_id = $data['barcodelistId'];
        unset($data['barcodelistId']);
        $data['updated_by']=get_staff_user_id();
        $data['updated_at']=date('Y-m-d h:i:s');
        $this->db->where('id', $barcode_list_id);
        $this->db->update(db_prefix() . 'barcode_list', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Barcode Updated [' . $data['barcode_id'] . ']');

            return true;
        }

        return false;
    }

    public function delete_barcode($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'barcode_list');
        if ($this->db->affected_rows() > 0) {

           log_activity('Barcode Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function add_packing_list($data)
    {
        unset($data['item_select']);
        unset($data['item_id']);
        unset($data['product_name']);
        unset($data['product_code']);
        unset($data['default_pack']);
        unset($data['product_id']);
        unset($data['pack_capacity']);
        unset($data['newitems']);
        $data['user_id'] = get_staff_user_id();
        $data['created_at']=date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'pack_list', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Pack List Added [ID: ' .$insert_id . ']');

            $stock['product_code'] = $data['packing_type'];
            $stock['product_name'] = $data['l_size'].'X'.$data['w_size'].'X'.$data['h_size'];
            $stock['stock_level'] = $data['stock_qty'];
            $stock['price'] = $data['pack_price'];
            $stock['pack_id'] = $insert_id;
            $stock['unit'] = $data['unit'];
            $stock['category'] = $data['category'];
            $stock['currency_id'] = $data['currency_id'];
            if(isset($data['pack_photo']))
                    $stock['product_photo'] = $data['pack_photo'];
            $this->stock_list_add($stock);
            return $insert_id;
        }
        return false;
    }

    public function stock_list_edit_by_pack($data)
    {
        $data['updated_by'] = get_staff_user_id();
        $data['updated_at'] = date('Y-m-d h:i:s');
        $this->db->where('pack_id', $data['pack_id']);
        $this->db->update(db_prefix() . 'stock_lists', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Item Updated [' . $data['product_name'] . ']');
            return true;
        }
        return false;
    }


    public function update_packing_list($data,$id)
    {
        unset($data['item_select']);
        unset($data['item_id']);
        unset($data['product_name']);
        unset($data['product_code']);
        unset($data['default_pack']);
        unset($data['pack_capacity']);
        unset($data['product_id']);
        unset($data['newitems']);
        unset($data['removed_items']);
        unset($data['items']);

        $data['updated_at']=date('Y-m-d h:i:s');
        $this->db->where('id',$id);
        $this->db->update(db_prefix() . 'pack_list', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Packing List Updated [' . $id . ']');
            $stock['product_code'] = $data['packing_type'];
            $stock['product_name'] = $data['l_size'].'X'.$data['w_size'].'X'.$data['h_size'];
            $stock['stock_level'] = $data['stock_qty'];
            $stock['price'] = $data['pack_price'];
            $stock['pack_id'] = $id;
            $stock['unit'] = $data['unit'];
            $stock['category'] = $data['category'];
            $stock['currency_id'] = $data['currency_id'];
            if(isset($data['pack_photo']))
                    $stock['product_photo'] = $data['pack_photo'];
            $this->stock_list_edit_by_pack($stock);
            return true;
        }
        return false;
    }

    public function get_packing_list($id = '')
    {
        $this->db->from(db_prefix() . 'pack_list');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'pack_list.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_pack_by_capacity($capacity = '')
    {
        if (is_numeric($capacity)) {
            $this->db->where('pack_capacity',$capacity);
            $package = $this->db->get(db_prefix().'package_group')->row();
        
            if(!empty($package))
            {
                $this->db->where('id', $package->packing_id);
                return $this->db->get(db_prefix().'pack_list')->row();
            }
            
        }
        // return $this->db->get()->result_array();
    }

    public function delete_packing_list($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'pack_list');
        if ($this->db->affected_rows() > 0) {
            log_activity('Pack List Deleted [' . $id . ']');
            $this->db->where('pack_id',$id);
            $this->db->delete(db_prefix().'stock_lists');
            return true;
        }

        return false;
    }

    public function get_grouped_packing()
    {
        $items = [];

        $this->db->order_by('name', 'asc');
        $groups = $this->db->get(db_prefix() . 'stock_categories')->result_array();

        array_unshift($groups, [
            'cate_id' => 0,
            'order_no' => 0,
            'name' => '',
        ]);

        foreach ($groups as $group) {
            $this->db->select(db_prefix() . 'stock_lists.*,' . db_prefix() . 'stock_categories.name as group_name,' . db_prefix() . 'stock_lists.id as id', db_prefix() . 'package_group.default_pack as default_pack');
            $this->db->where('category', $group['order_no']);
            $this->db->join(db_prefix() . 'stock_categories', '' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category', 'left');
            $this->db->order_by('product_name', 'asc');
            $this->db->where(db_prefix().'stock_categories.order_no=3');
            $_items = $this->db->get(db_prefix() . 'stock_lists')->result_array();
            if (count($_items) > 0) {
                $items[$group['cate_id']] = [];
                foreach ($_items as $i) {
                    array_push($items[$group['cate_id']], $i);
                }
            }
        }
        return $items;
    }

    public function get_grouped()
    {
        $items = [];

        $this->db->order_by('name', 'asc');
        $groups = $this->db->get(db_prefix() . 'stock_categories')->result_array();

        array_unshift($groups, [
            'cate_id' => 0,
            'order_no' => 0,
            'name' => '',
        ]);
        foreach ($groups as $group) {
            $this->db->select(db_prefix() . 'stock_lists.*,' . db_prefix() . 'stock_categories.name as group_name,' . db_prefix() . 'stock_lists.id as id', db_prefix() . 'package_group.default_pack as default_pack');
            $this->db->where('category', $group['order_no']);
            $this->db->join(db_prefix() . 'stock_categories', '' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category', 'left');
            $this->db->order_by('product_name', 'asc');
            $_items = $this->db->get(db_prefix() . 'stock_lists')->result_array();
            if (count($_items) > 0) {
                $items[$group['cate_id']] = [];
                foreach ($_items as $i) {
                    array_push($items[$group['cate_id']], $i);
                }
            }
        }
        return $items;
    }

    public function get_grouped_on_default_pack()
    {
        $items = [];

        $this->db->order_by('name', 'asc');
        $groups = $this->db->get(db_prefix() . 'stock_categories')->result_array();

        foreach ($groups as $group) {
            $this->db->select(db_prefix() . 'stock_lists.*,' . db_prefix() . 'stock_categories.name as group_name,' . db_prefix() . 'stock_lists.id as id', db_prefix() . 'package_group.default_pack as default_pack');
            $this->db->where('category', $group['id']);
            $this->db->join(db_prefix() . 'stock_categories', '' . db_prefix() . 'stock_categories.order_no = ' . db_prefix() . 'stock_lists.category', 'left');
            $this->db->join(db_prefix() . 'package_group', '' . db_prefix() . 'package_group.product_id = ' . db_prefix() . 'stock_lists.id', 'left');
            $this->db->order_by('product_name', 'asc');
            $this->db->where(array(
                           'default_pack='=> 0));
            $_items = $this->db->get(db_prefix() . 'stock_lists')->result_array();
            if (count($_items) > 0) {
                $items[$group['id']] = [];
                foreach ($_items as $i) {
                    array_push($items[$group['id']], $i);
                }
            }
        }
        return $items;
    }

    public function add_packing_group($data)
    {

        $pack_id = $data['packing_id'];
        unset($data['packing_id']);
        foreach ($data as $val) {
            $val['packing_id'] = $pack_id;
            unset($val['item_id']);
            if(isset($val['default_pack']))
                $val['default_pack'] = 1;
            else
                $val['default_pack'] = 0;
            $this->db->insert(db_prefix() . 'package_group', $val);
            $insert_id = $this->db->insert_id();
        }
    }

    public function update_packing_group($data)
    {
        $pack_id = $data['packing_id'];
        if(isset($data['newitems']))
        {
            $newitems = $data['newitems'];
            foreach ($newitems as $val) {
                $val['packing_id'] = $pack_id;
                unset($val['item_id']);
                if(isset($val['default_pack']))
                    $val['default_pack'] = 1;
                else
                    $val['default_pack'] = 0;
                $this->db->insert(db_prefix() . 'package_group', $val);
                $insert_id = $this->db->insert_id();
            }
        }
        
        if(isset($data['items'])){
            $items = $data['items'];
            foreach ($items as $key => $value) {
                $id = $value['itemid'];
                unset($value['itemid']);
                if(isset($value['default_pack']))
                    $value['default_pack'] = 1;
                else
                    $value['default_pack'] = 0;
                $this->db->where('id',$id);
                $this->db->update(db_prefix() . 'package_group', $value);
            }
        }
        

        if(isset($data['removed_items'])){
            $removed_items = $data['removed_items'];
            foreach ($removed_items as $val) {
                $this->db->where('id',$val);
                $this->db->delete(db_prefix() . 'package_group');
            }
        }
        
    }

    public function get_packing_group($packing_id)
    {
        $this->db->from(db_prefix() . 'package_group');
        if (is_numeric($packing_id)) {
            $this->db->where(db_prefix() . 'package_group.packing_id', $packing_id);
            return $this->db->get()->result_array();
        }
    }

    public function get_packing_group_by_product($data)
    {
        $this->db->from(db_prefix().'package_group');
        $this->db->where(db_prefix() .'package_group.product_id',$data['product_id']);
        $this->db->where(db_prefix() .'package_group.packing_id !=',$data['pack_id']);
        $res = $this->db->get()->result_array();
        foreach ($res as $key => $value) {
            if($value['default_pack'] == 1)
            return true;
        }
        return false;
    }

    public function update_original_price($data){
        $stock_lists = $this->stock_list_get();
        foreach ($stock_lists as $key => $stock) {
            $original_price = $stock['price']*$data['value1']*$data['value2'];
            $this->db->query('UPDATE '.db_prefix().'stock_lists set original_price ='.$original_price.' where id='.$stock['id']);
        }
        return $this->stock_list_get();     
    }
}
