<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Manufacturing_settings_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @param array $_POST data
     * @return boolean
     */
    public function add_machine($data)
    {
        unset($data['machineID']);
        $data['user_id']=get_staff_user_id();
        $data['created_at']=date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'machines_list', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('New machinery Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    /**
     * @param  array $_POST data
     * @return boolean
     * Update currency values
     */
    public function edit_machine($data)
    {
        $machineid = $data['machineID'];
        unset($data['machineID']);
        $data['updated_at']=date('Y-m-d h:i:s');
        $this->db->where('id', $machineid);
        $this->db->update(db_prefix() . 'machines_list', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Machine list Updated [' . $data['name'] . ']');

            $this->db->where('default_machine', $machineid);
            $recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
            foreach ($recipes as $key => $value) {
                $this->db->where('id', $value['id']);
                $value['machine_profit_expected'] = $data['profit_expectation'];
                $value['machine_power_expected'] = $data['power_usage'];
                $this->db->update(db_prefix().'product_recipe',$value);
            }

            $op_cost_per_sec = $this->db->get(db_prefix().'operation_cost')->row();
            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();
            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $this->db->where('id',$value['ingredient_item_id']);
                    $ingredient_item = $this->db->get(db_prefix().'stock_lists')->row();

                    if(!empty($ingredient_item))
                        $material_cost = $ingredient_item->price*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    else
                        $material_cost = $value['material_cost'];

                    if($value['pre_produced'] == 0 && floatval($value['cycle_time']) != 0 && floatval($value['mould_cavity']) != 0){
                        $production_cost = ((($value['machine_power_expected']*$value['energy_price_value'])/3600)*$value['cycle_time'])/$value['mould_cavity']+($op_cost_per_sec->op_cost_per_sec*$value['cycle_time'])/$value['mould_cavity']+(($value['machine_profit_expected']/$value['work_hour_capacity'])/(3600/$value['cycle_time']*$value['mould_cavity']));

                        $expected_profit = $value['machine_profit_expected']/(((3600/$value['cycle_time'])*$value['mould_cavity'])*$value['work_hour_capacity']);
                    }
                    else {
                        $production_cost = 0;
                        $expected_profit = 0;
                    }

                    $this->db->query('Update '.db_prefix().'product_recipe set production_cost ='.$production_cost.', expected_profit ='.$expected_profit.', material_cost ='.$material_cost.' where id ='.$value['id']);
                    $amount += $material_cost + $production_cost + $expected_profit;

                }
                $ins_cost = $op_cost_per_sec->op_cost_per_sec* $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
                $this->db->query('UPDATE '.db_prefix().'stock_lists SET price = '.$total.' where id ='.$value['rel_product_id']);
            }

            return true;
        }

        return false;
    }

    public function get_machine($id = '')
    {

        $this->db->from(db_prefix() . 'machines_list');
        // $this->db->join(db_prefix() . 'warehouses', '' . db_prefix() . 'warehouses.id = ' . db_prefix() . 'machines_list.take_from AND machines_list.export_to', 'left');
        // $this->db->order_by('name', 'asc');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'machines_list.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function change_machine_status($id, $status)
    {
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'machines_list', [
            'active' => $status,
        ]);
        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('machine_status_changed', [
                'id'     => $id,
                'status' => $status,
            ]);
            log_activity('Machine Status Changed [ID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');
            return true;
        }
        return false;
    }

    public function add_mould($data)
    {
        unset($data['mouldid']);
        $this->db->insert(db_prefix() . 'moulds', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Mould Added [ID: ' . $data['mould_cavity'] . ']');

            return true;
        }

        return false;
    }

    public function edit_mould($data)
    {
        $mould_id = $data['mouldid'];
        unset($data['mouldid']);
        $this->db->where('id', $mould_id);
        $this->db->update(db_prefix() . 'moulds', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Mould Updated [' . $data['mould_cavity'] . ']');

            $this->db->where('mould', $mould_id);
            $recipes = $this->db->get(db_prefix().'product_recipe')->result_array();

            foreach ($recipes as $key => $value) {
                $this->db->where('id', $value['id']);
                $value['mould_cavity'] = $data['mould_cavity'];
                $this->db->update(db_prefix().'product_recipe',$value);
            }

            $op_cost_per_sec = $this->db->get(db_prefix().'operation_cost')->row();
            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();

            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $this->db->where('id',$value['ingredient_item_id']);
                    $ingredient_item = $this->db->get(db_prefix().'stock_lists')->row();
                    if(!empty($ingredient_item))
                        $material_cost = $ingredient_item->price*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    else
                        $material_cost = $value['material_cost'];
                    if($value['pre_produced'] == 0 && floatval($value['cycle_time']) != 0 && floatval($value['mould_cavity']) != 0){
                        $this->db->where('rel_product_id',$value['rel_product_id']);
                        $price_calc_value = $this->db->get(db_prefix().'pricing_calculation')->row();

                        $production_cost = ((($value['machine_power_expected']*$value['energy_price_value'])/3600)*$value['cycle_time'])/$value['mould_cavity']+($op_cost_per_sec->op_cost_per_sec*$value['cycle_time'])/$value['mould_cavity']+(($value['machine_profit_expected']/$value['work_hour_capacity'])/(3600/$value['cycle_time']*$value['mould_cavity']));
                        
                        $temp1 = (3600/$value['cycle_time'])*$value['mould_cavity']*$value['work_hour_capacity'];
                        $expected_profit = $value['machine_profit_expected']/$temp1;
                    }
                    else {
                        $production_cost = 0;
                        $expected_profit = 0;
                    }

                    $this->db->query('Update '.db_prefix().'product_recipe set production_cost ='.$production_cost.', expected_profit ='.$expected_profit.', material_cost ='.$material_cost.', mould_cavity ='.$data['mould_cavity'].' where id ='.$value['id']);

                    $amount += $material_cost + $production_cost + $expected_profit;
                }
                $ins_cost = $op_cost_per_sec->op_cost_per_sec* $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
                $this->db->query('UPDATE '.db_prefix().'stock_lists SET price = '.$total.' where id ='.$value['rel_product_id']);
            }

            return true;
        }

        return false;
    }

    public function get_mould_activity_status($id)
    {
        $this->db->from(db_prefix() . 'moulds');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'moulds.id', $id);

            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function change_mould_status($id, $status)
    {
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'moulds', [
            'active' => $status,
        ]);
        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('moulds_status_changed', [
                'id'     => $id,
                'status' => $status,
            ]);
            log_activity('Moulds Status Changed [ID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');
            return true;
        }
        return false;
    }

    public function get_machine_list()
    {
        $this->db->order_by('name', 'asc');
        return $this->db->get(db_prefix() . 'machines_list')->result_array();

    }
    public function get_mould_list()
    {
        $this->db->order_by('id', 'asc');
        return $this->db->get(db_prefix() . 'moulds')->result_array();
    }

    public function get_machine_by_mould($id)
    {
        $this->db->where('mould_id',$id);
        return $this->db->get(db_prefix().'mould_suitability')->result_array();
    }

    public function add_moulds_suitability($data)
    {
        unset($data['mouldID']);
        $data['user_id']=get_staff_user_id();
        $data['created_at']=date('Y-m-d h:i:s');
        if (isset($data['default_machine'])) {
            $data['default_machine'] = 1;
        } else {
            $data['default_machine'] = 0;
        }
        
        $this->db->insert(db_prefix() . 'mould_suitability', $data);
        $insert_id = $this->db->insert_id();
        // print_r($insert_id ); exit();
        if ($insert_id) {
            log_activity('New mould_suitability Added');
            return true;
        }
        return false;
    }

    public function edit_moulds_suitability($data)
    {
        $mouldSuitableId = $data['mouldID'];
        unset($data['mouldID']);
        $data['updated_at']=date('Y-m-d h:i:s');
        if (isset($data['default_machine'])) {
            $data['default_machine'] = 1;
        } else {
            $data['default_machine'] = 0;
        }
        $this->db->where('id', $mouldSuitableId);
        $this->db->update(db_prefix() . 'mould_suitability', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('mould_suitability Updated');

            return true;
        }

        return false;
    }

    public function delete_moulds_suitability($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'mould_suitability');
        if ($this->db->affected_rows() > 0) {

            log_activity('moulds_suitability Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_suitability($id = ''){
        $this->db->from(db_prefix() . 'mould_suitability');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'mould_suitability.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_suitability_by_mould($mould_id = '', $suit_id = ''){
        $this->db->from(db_prefix() . 'mould_suitability');
        $this->db->where(db_prefix() . 'mould_suitability.mould_id', $mould_id);
        if(is_numeric($suit_id))
            $this->db->where(db_prefix() . 'mould_suitability.id !='.$suit_id);
        return $this->db->get()->result_array();

    }

    public function get_default_machine_status_by_id($id){
        $this->db->from(db_prefix() . 'mould_suitability');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'mould_suitability.id', $id);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function add_energy_prices($data)
    {
        unset($data['enerypriceid']);
        $this->db->insert(db_prefix() . 'energy_prices', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Energy Price Added [ID: ' . $data['energy_price'] . ']');

            return true;
        }

        return false;
    }

    public function edit_energy_prices($data)
    {
        $enery_price_id = $data['enerypriceid'];
        unset($data['enerypriceid']);
        $this->db->where('id', $enery_price_id);
        $this->db->update(db_prefix() . 'energy_prices', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Energy Price Updated [' . $data['energy_price'] . ']');

            $this->db->query('Update '.db_prefix().'product_recipe set energy_price_value ='.$data['energy_price']);
            $op_cost_per_sec = $this->db->get(db_prefix().'operation_cost')->row();
            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();

            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $this->db->where('id',$value['ingredient_item_id']);
                    $ingredient_item = $this->db->get(db_prefix().'stock_lists')->row();
                    if(!empty($ingredient_item))
                        $material_cost = $ingredient_item->price*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    else
                        $material_cost = $value['material_cost'];

                    if($value['pre_produced'] == 0 && floatval($value['cycle_time']) != 0 && floatval($value['mould_cavity']) != 0){
                        $production_cost = ((($value['machine_power_expected']*$data['energy_price'])/3600)*$value['cycle_time'])/$value['mould_cavity']+($op_cost_per_sec->op_cost_per_sec*$value['cycle_time'])/$value['mould_cavity']+(($value['machine_profit_expected']/$value['work_hour_capacity'])/(3600/$value['cycle_time']*$value['mould_cavity']));
                    }
                    else
                        $production_cost = 0;
                    
                    $this->db->query('Update '.db_prefix().'product_recipe set  production_cost ='.$production_cost.', material_cost ='.$material_cost.' where id ='.$value['id']);

                    $amount += $material_cost + $production_cost + $value['expected_profit'];

                }

                $ins_cost = $op_cost_per_sec->op_cost_per_sec* $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
                $this->db->query('UPDATE '.db_prefix().'stock_lists SET price = '.$total.' where id ='.$value['rel_product_id']);
            }
            return true;
        }

        return false;
    }

    public function delete_energy_prices($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'energy_prices');
        if ($this->db->affected_rows() > 0) {

           log_activity('Energy Price Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_energy_price()
    {
        $this->db->from(db_prefix() . 'energy_prices');
        return $this->db->get()->row();
    }

    public function get_operation_cost()
    {
        $this->db->from(db_prefix() . 'operation_cost');
        return $this->db->get()->row();
    }

    public function add_work_hours_capacity($data)
    {
        unset($data['workhoursid']);
        $this->db->insert(db_prefix() . 'work_hours', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Work Hours Added [ID: ' . $data['capacity_hours'] . ']');

            return true;
        }

        return false;
    }

    public function edit_work_hours_capacity($data)
    {
        $work_hours_id = $data['workhoursid'];
        unset($data['workhoursid']);
        $this->db->where('id', $work_hours_id);
        $this->db->update(db_prefix() . 'work_hours', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Work Hours Updated [' . $data['capacity_hours'] . ']');

           $this->db->query('Update '.db_prefix().'product_recipe set work_hour_capacity ='.$data['capacity_hours']);

            $op_cost_per_sec = $this->db->get(db_prefix().'operation_cost')->row();
            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();

            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $this->db->where('id',$value['ingredient_item_id']);
                    $ingredient_item = $this->db->get(db_prefix().'stock_lists')->row();
                    
                    if(!empty($ingredient_item))
                        $material_cost = $ingredient_item->price*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    else
                        $material_cost = $value['material_cost'];

                    if($value['pre_produced'] == 0 && floatval($value['cycle_time']) != 0 && floatval($value['mould_cavity']) != 0){
                        $production_cost = ((($value['machine_power_expected']*$value['energy_price_value'])/3600)*$value['cycle_time'])/$value['mould_cavity']+($op_cost_per_sec->op_cost_per_sec*$value['cycle_time'])/$value['mould_cavity']+(($value['machine_profit_expected']/$data['capacity_hours'])/(3600/$value['cycle_time']*$value['mould_cavity']));

                        // if($value['id'] == 192){
                        //     echo $value['machine_power_expected'];
                        //     echo '<br>';
                        //     echo $value['energy_price_value'];
                        //     echo '<br>';
                        //     echo $value['cycle_time'];
                        //     echo '<br>';
                        //     echo $value['mould_cavity'];
                        //     echo '<br>';
                        //     echo $value['machine_profit_expected'];
                        //     echo '<br>';
                        //     echo $data['capacity_hours'];
                        //     echo '<br>';
                        //     echo ((($value['machine_power_expected']*$value['energy_price_value'])/3600)*$value['cycle_time'])/$value['mould_cavity'];
                        //     echo '<br>';
                        //     echo ($op_cost_per_sec->op_cost_per_sec*$value['cycle_time'])/$value['mould_cavity'];
                        //     echo '<br>';
                        //     echo (($value['machine_profit_expected']/$data['capacity_hours'])/(3600/$value['cycle_time']*$value['mould_cavity']));
                        //     echo '<br>';
                        //     echo $production_cost;
                        //     echo '<br/>';
                        //     exit();
                        // }
                        
                        $expected_profit = $value['machine_profit_expected']/(((3600/$value['cycle_time'])*$value['mould_cavity'])*$data['capacity_hours']);
                    }
                    else{
                        $production_cost = 0;
                        $expected_profit = 0;
                    }
                    $this->db->query('Update '.db_prefix().'product_recipe set production_cost ='.$production_cost.', expected_profit ='.$expected_profit.', material_cost ='.$material_cost.' where id ='.$value['id']);

                    $amount += $material_cost + $production_cost + $expected_profit;

                }
                $ins_cost = $op_cost_per_sec->op_cost_per_sec* $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
                $this->db->query('UPDATE '.db_prefix().'stock_lists SET price = '.$total.' where id ='.$value['rel_product_id']);
            }
            // exit();
            return true;
        }

        return false;
    }

    public function delete_work_hours_capacity($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'work_hours');
        if ($this->db->affected_rows() > 0) {

           log_activity('Work Hours Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_work_hour()
    {
        $this->db->from(db_prefix() . 'work_hours');
        return $this->db->get()->row();
    }

    public function add_installation_process($data)
    {
        unset($data['installationId']);
        $data['user_id']=get_staff_user_id();
        $data['created_at']=date('Y-m-d h:i:s');
        $this->db->insert(db_prefix() . 'installation', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('Installation Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function edit_installation_process($data)
    {
        $installation_id = $data['installationId'];
        unset($data['installationId']);
        $data['updated_at']=date('Y-m-d h:i:s');
        $this->db->where('id', $installation_id);
        $this->db->update(db_prefix() . 'installation', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Installation Updated [' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function delete_installation_process($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'installation');
        if ($this->db->affected_rows() > 0) {

           log_activity('Installation Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_installation_by_id($id = '')
    {

        $this->db->from(db_prefix() . 'installation');

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'installation.id', $id);

            return $this->db->get()->row();
        }

        return $this->db->get()->result_array();
    }

    public function get_default_machine($mould_id)
    {
        $this->db->from(db_prefix() . 'mould_suitability');
        $this->db->where('mould_id',$mould_id);
        $this->db->where('default_machine', 1);
        $default_suitability =  $this->db->get()->row();
        if(isset($default_suitability)){
            $default_machine_id = $default_suitability->machine_id;
            return $this->get_machine($default_machine_id);
        }
        return false;
        
    }

    public function add_op_cost_per_sec($data)
    {
        unset($data['opcid']);
        $this->db->insert(db_prefix() . 'operation_cost', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Operation Cost Added [ID: ' . $data['op_cost_per_sec'] . ']');

            return true;
        }

        return false;
    }

    public function edit_op_cost_per_sec($data)
    {
        $opcid = $data['opcid'];
        unset($data['opcid']);
        $this->db->where('id', $opcid);
        $this->db->update(db_prefix() . 'operation_cost', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Operation Cost Updated [' . $data['op_cost_per_sec'] . ']');

            $stocks_in_recipe = $this->db->get(db_prefix().'pricing_calculation')->result_array();

            foreach ($stocks_in_recipe as $key => $stock) {
                $this->db->where('rel_product_id',$stock['rel_product_id']);
                $rel_recipes = $this->db->get(db_prefix().'product_recipe')->result_array();
                $amount = 0;
                foreach ($rel_recipes as $key => $value) {
                    $this->db->where('id',$value['ingredient_item_id']);
                    $ingredient_item = $this->db->get(db_prefix().'stock_lists')->row();
                    
                    if(!empty($ingredient_item))
                        $material_cost = $ingredient_item->price*$value['used_qty']*$value['ingredient_currency_rate']*(1+$value['rate_of_waste']/100);
                    else
                        $material_cost = $value['material_cost'];

                    if($value['pre_produced'] == 0 && floatval($value['cycle_time']) != 0 && floatval($value['mould_cavity']) != 0)
                        $production_cost = ((($value['machine_power_expected']*$value['energy_price_value'])/3600)*$value['cycle_time'])/$value['mould_cavity']+($data['op_cost_per_sec']*$value['cycle_time'])/$value['mould_cavity']+(($value['machine_profit_expected']/$value['work_hour_capacity'])/(3600/$value['cycle_time']*$value['mould_cavity']));
                    else
                        $production_cost = 0;

                    $this->db->query('Update '.db_prefix().'product_recipe set  production_cost ='.$production_cost.', material_cost ='.$material_cost.' where id ='.$value['id']);

                    $amount += $material_cost + $production_cost + $value['expected_profit'];

                }
                $ins_cost = $data['op_cost_per_sec'] * $stock['ins_time'];
                $total = $amount + $ins_cost + $stock['other_cost'];
                $this->db->query('Update '.db_prefix().'pricing_calculation set price ='.$total.', ins_cost = '.$ins_cost.' where rel_product_id ='.$value['rel_product_id']);
                $this->db->query('UPDATE '.db_prefix().'stock_lists SET price = '.$total.' where id ='.$value['rel_product_id']);
            }

            return true;
        }

        return false;
    }

}