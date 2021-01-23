<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Production_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function add_work_order_phase($data)
    {
        unset($data['workorderphaseid']);
        $this->db->insert(db_prefix() . 'work_order_phases', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Work Order Phase Added [ID: ' . $data['phase'] . ']');

            return true;
        }

        return false;
    }

    
    public function edit_work_order_phase($data)
    {
        $work_order_phase_id = $data['workorderphaseid'];
        unset($data['workorderphaseid']);
        $this->db->where('id', $work_order_phase_id);
        $this->db->update(db_prefix() . 'work_order_phases', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Work Order Phase Updated [' . $data['phase'] . ']');

            return true;
        }

        return false;
    }

    public function get_wo_phases()
    {
        $this->db->order_by('id', 'asc');
        return $this->db->get(db_prefix() . 'work_order_phases')->result_array();
    }

    public function produced_qty($data)
    {

        $data['userid'] = get_staff_user_id();
        $this->db->where('id',$data['machine_id']);
        $machine = $this->db->get(db_prefix().'machines_list')->row();
        $take_from = $machine->take_from;
        $export_to = $machine->export_to;

        if(isset($data['p_qty_id']))
        {
            $this->db->where('p_qty_id',$data['p_qty_id']);
            $this->db->update(db_prefix().'produced_qty',$data);

            $this->db->join(db_prefix().'events', db_prefix().'events.eventid='.db_prefix().'produced_qty.rel_event_id','left');
            $this->db->join(db_prefix().'plan_recipe',db_prefix().'plan_recipe.id='.db_prefix().'events.recipe_id','left');
            $this->db->where('p_qty_id',$data['p_qty_id']);
            $res = $this->db->get(db_prefix().'produced_qty')->row();
            $this->load->model('warehouses_model');
            
            // print_r($res); exit();  
            $this->db->where('id',$data['machine_id']);
            $machine = $this->db->get(db_prefix().'machines_list')->row();
            $take_from = $machine->take_from;
            $export_to = $machine->export_to;

            $minus_transfer_stock = [];
            $minus_transfer_stock['stock_product_code'] = $res->ingredient_item_id;
            $minus_transfer_stock['transaction_from'] = $take_from;
            $minus_transfer_stock['transaction_to'] = NULL;
            $minus_transfer_stock['wo_no'] = $res->rel_wo_id;
            $minus_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
            $minus_transfer_stock['transaction_qty'] = floatval($res->produced_quantity)*floatval($res->used_qty)/floatval($res->total_production_qty);
            $minus_transfer_stock['description'] = _l('used_for_production');
            $minus_success = $this->warehouses_model->update_transfer_by_production($minus_transfer_stock,$res->minus_transfer_id);

            if(!$minus_success)
                return false;

            /*Connected Stock*/
            $this->db->join(db_prefix().'events', db_prefix().'events.eventid='.db_prefix().'produced_qty.rel_event_id','left');
            $this->db->join(db_prefix().'plan_recipe',db_prefix().'plan_recipe.connected_pair='.$res->ingredient_item_id,'left');
            $this->db->where('p_qty_id',$data['p_qty_id']);
            $this->db->where('rel_wo_id',$res->rel_wo_id);
            $connected = $this->db->get(db_prefix().'produced_qty')->row();
            
            if(!empty($connected)){

                $minus_transfer_stock_connected = [];
                $minus_transfer_stock_connected['stock_product_code'] = $connected->ingredient_item_id;
                $minus_transfer_stock_connected['transaction_from'] = $take_from;
                $minus_transfer_stock_connected['transaction_to'] = NULL;
                $minus_transfer_stock_connected['wo_no'] = $connected->rel_wo_id;
                $minus_transfer_stock_connected['transaction_notes'] = 'WO-'.$connected->rel_wo_id;
                $minus_transfer_stock_connected['transaction_qty'] = floatval($connected->produced_quantity)*floatval($connected->used_qty)/floatval($connected->total_production_qty);
                $minus_transfer_stock_connected['description'] = _l('used_for_production');
                $minus_success_connected = $this->warehouses_model->update_transfer_by_production($minus_transfer_stock_connected,$connected->minus_transfer_id);
                // if(!$minus_success_connected)
                //     return false;
            }

            /*Waste Tranfer*/
            if(!empty(floatval($data['waste_production_quantity']))){
                $waste_transfer_stock = [];
                $waste_transfer_stock['stock_product_code'] = $res->ingredient_item_id;
                $waste_transfer_stock['transaction_qty'] = floatval($res->waste_production_quantity)*floatval($res->used_qty)/floatval($res->total_production_qty);
                $waste_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
                $waste_transfer_stock['transaction_from'] = $take_from;
                $waste_transfer_stock['transaction_to'] = NULL;
                $waste_transfer_stock['description'] = _l('waste_production');
                if(!empty($res->waste_transfer_id)){
                    $last_waste_qty = $this->warehouses_model->get_transfer($res->waste_transfer_id);
                    $waste_transfer_stock['delta'] = $waste_transfer_stock['transaction_qty'] - $last_waste_qty->transaction_qty;
                    $waste_success = $this->warehouses_model->update_transfer_by_production($waste_transfer_stock, $res->waste_transfer_id);
                    if(!$waste_success)
                        return false;

                } else {
                    $waste_transfer_id = $this->warehouses_model->add_transfer_by_production($waste_transfer_stock, -1);
                    if(!$waste_transfer_id)
                        return false;
                    else {
                        $data['waste_transfer_id'] = $waste_transfer_id;
                        $this->db->where('p_qty_id',$data['p_qty_id']);
                        $this->db->update(db_prefix().'produced_qty',$data);
                    }
                }

                if(!empty($connected)){
                    $waste_transfer_stock_connected = [];
                    $waste_transfer_stock_connected['stock_product_code'] = $connected->ingredient_item_id;
                    $waste_transfer_stock_connected['transaction_qty'] = floatval($connected->waste_production_quantity)*floatval($connected->used_qty)/floatval($connected->total_production_qty);
                    $waste_transfer_stock_connected['transaction_notes'] = 'WO-'.$connected->rel_wo_id;
                    $waste_transfer_stock_connected['transaction_from'] = $take_from;
                    $waste_transfer_stock_connected['transaction_to'] = NULL;
                    $waste_transfer_stock_connected['description'] = _l('waste_production');
                    if(!empty($connected->waste_transfer_id)){
                        $last_waste_qty = $this->warehouses_model->get_transfer($connected->waste_transfer_id);
                        $waste_transfer_stock_connected['delta'] = $waste_transfer_stock_connected['transaction_qty'] - $last_waste_qty->transaction_qty;
                        $waste_success = $this->warehouses_model->update_transfer_by_production($waste_transfer_stock_connected, $res->waste_transfer_id);
                        if(!$waste_success)
                            return false;

                    } else {
                        $waste_transfer_id = $this->warehouses_model->add_transfer_by_production($waste_transfer_stock_connected, -1);
                        if(!$waste_transfer_id)
                            return false;
                        else {
                            $data['waste_transfer_id'] = $waste_transfer_id;
                            $this->db->where('p_qty_id',$data['p_qty_id']);
                            $this->db->update(db_prefix().'produced_qty',$data);
                        }
                    }
                }
            }

            $plus_transfer_stock = [];
            $plus_transfer_stock['stock_product_code'] = $res->wo_product_id;
            $plus_transfer_stock['transaction_qty'] = $res->produced_quantity;
            $plus_transfer_stock['transaction_to'] = $export_to;
            $plus_transfer_stock['transaction_from'] = NULL;
            $plus_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
            $last_transaction_qty = $this->warehouses_model->get_transfer($res->plus_transfer_id)->transaction_qty;
            $plus_transfer_stock['delta'] = $plus_transfer_stock['transaction_qty'] - $last_transaction_qty;
            $plus_transfer_stock['description'] = _l('produced_item');
            $plus_success = $this->warehouses_model->update_transfer_by_production($plus_transfer_stock, $res->plus_transfer_id);
            
            if ($this->db->affected_rows() > 0) {
               log_activity('Daily Produced Qty Updated [' . $data['p_qty_id'] . ']');
                return true;
            }

        } else {
            $this->db->insert(db_prefix() . 'produced_qty', $data);
            $insert_id = $this->db->insert_id();

            if ($insert_id) {
                $this->db->join(db_prefix().'events', db_prefix().'events.eventid='.db_prefix().'produced_qty.rel_event_id','left');
                $this->db->join(db_prefix().'plan_recipe',db_prefix().'plan_recipe.id='.db_prefix().'events.recipe_id','left');
                $this->db->where('p_qty_id',$insert_id);
                $res = $this->db->get(db_prefix().'produced_qty')->row();
                $this->load->model('warehouses_model');


                /*Connected Stock*/
                $this->db->join(db_prefix().'events', db_prefix().'events.eventid='.db_prefix().'produced_qty.rel_event_id','left');
                $this->db->join(db_prefix().'plan_recipe',db_prefix().'plan_recipe.connected_pair='.$res->ingredient_item_id,'left');
                $this->db->where('p_qty_id',$insert_id);
                $this->db->where('rel_wo_id',$res->rel_wo_id);
                $connected = $this->db->get(db_prefix().'produced_qty')->row();
                $minus_transfer_stock = [];
                $minus_transfer_stock['stock_product_code'] = $res->ingredient_item_id;
                $minus_transfer_stock['transaction_from'] = $take_from;
                $minus_transfer_stock['transaction_to'] = NULL;
                $minus_transfer_stock['transaction_qty'] = floatval($res->produced_quantity)*floatval($res->used_qty)/floatval($res->total_production_qty);

                $minus_transfer_stock['wo_no'] = $res->rel_wo_id;
                $minus_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
                $minus_transfer_stock['description'] = _l('used_for_production');
                $minus_transfer_id = $this->warehouses_model->add_transfer_by_production($minus_transfer_stock, -1);
                if(!$minus_transfer_id){
                    return false;
                } else {
                    $data['minus_transfer_id'] = $minus_transfer_id;
                }

                if(!empty($connected)){

                    $minus_transfer_stock_connected = [];
                    $minus_transfer_stock_connected['stock_product_code'] = $connected->ingredient_item_id;
                    $minus_transfer_stock_connected['transaction_from'] = $take_from;
                    $minus_transfer_stock_connected['transaction_to'] = NULL;
                    $minus_transfer_stock_connected['wo_no'] = $connected->rel_wo_id;
                    $minus_transfer_stock_connected['transaction_notes'] = 'WO-'.$connected->rel_wo_id;
                    $minus_transfer_stock_connected['transaction_qty'] = floatval($connected->produced_quantity)*floatval($connected->used_qty)/floatval($connected->total_production_qty);
                    $minus_transfer_stock_connected['description'] = _l('used_for_production');

                    $minus_transfer_id = $this->warehouses_model->add_transfer_by_production($minus_transfer_stock_connected, -1);
                    if(!$minus_transfer_id){
                        return false;
                    } else {
                        $data['minus_transfer_id'] = $minus_transfer_id;
                    }
                }

                /*Waste minus tranfer*/
                if(!empty(floatval($data['waste_production_quantity']))){
                    $waste_transfer_stock = [];
                    $waste_transfer_stock['stock_product_code'] = $res->ingredient_item_id;
                    $waste_transfer_stock['transaction_from'] = $take_from;
                    $waste_transfer_stock['transaction_to'] = NULL;
                    $waste_transfer_stock['transaction_qty'] = floatval($res->waste_production_quantity)*floatval($res->used_qty)/floatval($res->total_production_qty);
                    $waste_transfer_stock['wo_no'] = $res->rel_wo_id;
                    $waste_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
                    $waste_transfer_stock['description'] = _l('waste_production');
                    $waste_transfer_id = $this->warehouses_model->add_transfer_by_production($waste_transfer_stock, -1);
                    if(!$waste_transfer_id){
                        set_alert('danger', _l('warehouse_overrode'));
                        return false;
                    } else {
                        $data['waste_transfer_id'] = $waste_transfer_id;
                    }

                    if(!empty($connected)){
                        $waste_transfer_stock_connected = [];
                        $waste_transfer_stock_connected['stock_product_code'] = $connected->ingredient_item_id;
                        $waste_transfer_stock_connected['transaction_qty'] = floatval($connected->waste_production_quantity)*floatval($connected->used_qty)/floatval($connected->total_production_qty);
                        $waste_transfer_stock_connected['transaction_notes'] = 'WO-'.$connected->rel_wo_id;
                        $waste_transfer_stock_connected['transaction_from'] = $take_from;
                        $waste_transfer_stock_connected['transaction_to'] = NULL;
                        $waste_transfer_stock_connected['description'] = _l('waste_production');
                        $waste_transfer_stock_connected['wo_no'] = $connected->rel_wo_id;
                        $waste_transfer_stock_connected['transaction_notes'] = 'WO-'.$connected->rel_wo_id;
                        $waste_transfer_stock_connected['description'] = _l('waste_production');
                        $waste_transfer_id = $this->warehouses_model->add_transfer_by_production($waste_transfer_stock_connected, -1);
                        if(!$waste_transfer_id){
                            set_alert('danger', _l('warehouse_overrode'));
                            return false;
                        } else {
                            $data['waste_transfer_id'] = $waste_transfer_id;
                        }
                    }

                }

                $plus_transfer_stock = [];
                $plus_transfer_stock['stock_product_code'] = $res->wo_product_id;
                $plus_transfer_stock['transaction_from'] = NULL;
                $plus_transfer_stock['transaction_to'] = $export_to;
                $plus_transfer_stock['transaction_qty'] = $res->produced_quantity;
                $plus_transfer_stock['transaction_notes'] = 'WO-'.$res->rel_wo_id;
                $plus_transfer_stock['description'] = _l('produced_item');
                $plus_transfer_id = $this->warehouses_model->add_transfer_by_production($plus_transfer_stock, 1);
                if(!$plus_transfer_id){
                    set_alert('danger', _l('warehouse_overrode'));
                    return false;
                } else {
                    $data['plus_transfer_id'] = $plus_transfer_id;
                }
                $this->db->where('p_qty_id',$insert_id);
                $this->db->update(db_prefix().'produced_qty',$data);
                return true;
            } else{
                return false;
            }

        }
    }

    public function get_produced_qty($data)
    {
        $this->db->where('current_time_selection',$data['date']);
        $this->db->where('machine_id',$data['machine_id']);
        return $this->db->get(db_prefix().'produced_qty')->row();
    }

    public function get_total_amount($eventid)
    {
        $this->db->from(db_prefix().'produced_qty');
        $this->db->where('rel_event_id',$eventid);
        $produced_qty_arr = $this->db->get()->result_array();

        $total_produced = 0;
        foreach ($produced_qty_arr as $key => $value) {
            $total_produced += $value['produced_quantity'];
        }
        return floatval($total_produced);
    }

}
