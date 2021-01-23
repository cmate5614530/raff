<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Manufacturing_settings extends AdminController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('manufacturing_settings_model');
        $this->load->model('warehouses_model');
    }

    public function list_of_machinery()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('list_of_machinery');
        }

        $data['warehouses'] = $this->warehouses_model->get_warehouse_list();

        $data['title'] = _l('list_of_machinery');
        $this->load->view('admin/manufacturing_settings/list_of_machinery/manage', $data);
    }

    public function manage_list_of_machinery()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['machineID'] == '') {
                $success = $this->manufacturing_settings_model->add_machine($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('machine'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_machine($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('machine'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function get_list_machine_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $machines = $this->manufacturing_settings_model->get_machine($id);
            echo json_encode($machines);
        }
    }

    public function change_machine_status($id, $status)
    {
        if ($this->input->is_ajax_request()) {
            $this->manufacturing_settings_model->change_machine_status($id, $status);
        }
    }

    public function list_of_moulds()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('list_of_moulds');
        }

        $data['title'] = _l('list_of_moulds');
        $this->load->view('admin/manufacturing_settings/list_of_moulds/manage', $data);
    }

    public function manage_list_of_moulds()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['mouldid'] == '') {
                $success = $this->manufacturing_settings_model->add_mould($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('moulds'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_mould($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('moulds'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function get_mould_activity_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $mould = $this->manufacturing_settings_model->get_mould_activity_status($id);
            echo json_encode($mould);
        }
    }

    public function change_mould_status($id, $status)
    {
        if ($this->input->is_ajax_request()) {
            $this->manufacturing_settings_model->change_mould_status($id, $status);
        }
    }

    public function moulds_suitability()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('moulds_suitability');
        }

        $data['machine_list'] = $this->manufacturing_settings_model->get_machine_list();
        $data['mould_list'] = $this->manufacturing_settings_model->get_mould_list();
        $data['title'] = _l('moulds_suitability');
        $this->load->view('admin/manufacturing_settings/moulds_of_suitability/manage', $data);
    }

    public function manage_moulds_suitability()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            $check_flag = false;
            if ($data['mouldID'] == '') {

                $all_suits = $this->manufacturing_settings_model->get_suitability_by_mould($data['mould_id']);
                
                if(!empty($all_suits))
                {
                    foreach ($all_suits as $key => $suit) {
                        if($suit['mould_id'] == $data['mould_id'] && $suit['machine_id'] == $data['machine_id'])
                        {
                            $check_msg = _l('suitability is already exist');
                            $check_flag = true;
                            echo json_encode([
                                'flag' => $check_flag,
                                'msg' => $check_msg,
                            ]);
                        } else if(isset($data['default_machine'])){
                            if($suit['id'] != $data['mouldID'] && $suit['default_machine'] == 1)
                            {
                                $check_msg = _l('default_machine is already exist');
                                $check_flag = true;
                                echo json_encode([
                                    'flag' => $check_flag,
                                    'msg' => $check_msg,
                                ]);
                            } 
                        }     
                    }
                }


                if($check_flag == false)
                {
                    $success = $this->manufacturing_settings_model->add_moulds_suitability($data);
                    $message = '';
                    if ($success == true) {
                        $message = _l('added_successfully', _l('mould_suitability'));
                    }
                    echo json_encode([
                        'success' => $success,
                        'message' => $message,
                    ]);
                }

                
            } else {
                $all_other_suits = $this->manufacturing_settings_model->get_suitability_by_mould($data['mould_id'], $data['mouldID']);
                if(!empty($all_other_suits))
                {
                    foreach ($all_other_suits as $key => $suit) {
                        if($suit['mould_id'] == $data['mould_id'] && $suit['machine_id'] == $data['machine_id'])
                        {
                            $check_msg = _l('suitability is already exist');
                            $check_flag = true;
                            echo json_encode([
                                'flag' => $check_flag,
                                'msg' => $check_msg,
                            ]);
                        } else if(isset($data['default_machine'])){
                            if($suit['id'] != $data['mouldID'] && $suit['default_machine'] == 1)
                            {
                                $check_msg = _l('default_machine is already exist');
                                $check_flag = true;
                                echo json_encode([
                                    'flag' => $check_flag,
                                    'msg' => $check_msg,
                                ]);
                            } 
                        }     
                    }
                }

                if($check_flag == false)
                {
                    $success = $this->manufacturing_settings_model->edit_moulds_suitability($data);
                    $message = '';
                    if ($success == true) {
                        $message = _l('updated_successfully', _l('mould_suitability'));
                    }
                    echo json_encode([
                        'success' => $success,
                        'message' => $message,
                    ]);
                }
            }
        }
    }

    public function delete_moulds_suitability($id)
    {
        if (!$id) {
            redirect(admin_url('manufacturing_settings/moulds_suitability'));
        }
        $response = $this->manufacturing_settings_model->delete_moulds_suitability($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('mould_suitability')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('mould_suitability')));
        }
        redirect(admin_url('manufacturing_settings/moulds_suitability'));
    }


    public function get_suitability($id)
    {
        if ($this->input->is_ajax_request()) {
            $mould_cavity_id = $this->manufacturing_settings_model->get_suitability($id);
            echo json_encode($mould_cavity_id);
        }
    }

    public function get_default_machine_status($id)
    {
        if ($this->input->is_ajax_request()) {
            $default_machine_status = $this->manufacturing_settings_model->get_default_machine_status_by_id($id);
            echo json_encode($default_machine_status);
        }
    }

    public function energy_prices()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('energy_prices');
        }
        $data['title'] = _l('energy_prices');
        $this->load->view('admin/manufacturing_settings/energy_prices/manage', $data);
    }

    public function manage_energy_prices()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['enerypriceid'] == '') {
                $success = $this->manufacturing_settings_model->add_energy_prices($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('energy_prices'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_energy_prices($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('energy_prices'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_energy_prices($id)
    {
        if (!$id) {
            redirect(admin_url('manufacturing_settings/energy_prices'));
        }
        $response = $this->manufacturing_settings_model->delete_energy_prices($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('energy_prices')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('energy_prices')));
        }
        redirect(admin_url('manufacturing_settings/energy_prices'));
    }

    public function work_hours_capacity()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('work_hours');
        }
        $data['title'] = _l('work_hours');
        $this->load->view('admin/manufacturing_settings/work_hours/manage', $data);
    }

    public function manage_work_hours_capacity()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['workhoursid'] == '') {
                $success = $this->manufacturing_settings_model->add_work_hours_capacity($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('work_hours_capacity'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_work_hours_capacity($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('work_hours_capacity'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_work_hours_capacity($id)
    {
        if (!$id) {
            redirect(admin_url('manufacturing_settings/work_hours_capacity'));
        }
        $response = $this->manufacturing_settings_model->delete_work_hours_capacity($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('work_hours_capacity')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('work_hours_capacity')));
        }
        redirect(admin_url('manufacturing_settings/work_hours_capacity'));
    }

    public function installation_process()
    {
        if ($this->input->is_ajax_request()) {
           $this->app->get_table_data('installation');
       }

        $data['warehouses'] = $this->warehouses_model->get_warehouse_list();
        $data['title'] = _l('installation');
        $this->load->view('admin/manufacturing_settings/installation/manage', $data);
    }

    public function manage_installation_process()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['installationId'] == '') {
                $success = $this->manufacturing_settings_model->add_installation_process($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('installation'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_installation_process($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('installation'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }

    public function delete_installation_process($id)
    {
        if (!$id) {
            redirect(admin_url('manufacturing_settings/installation_process'));
        }
        $response = $this->manufacturing_settings_model->delete_installation_process($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('installation')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('installation')));
        }
        redirect(admin_url('manufacturing_settings/installation_process'));
    }

    /* Get Installation by id / ajax */
    public function get_installation_by_id($id)
    {
        if ($this->input->is_ajax_request()) {
            $installationByid = $this->manufacturing_settings_model->get_installation_by_id($id);
            echo json_encode($installationByid);
        }
    }

    public function get_default_machine($mould_id)
    {
        if ($this->input->is_ajax_request()) {
            $default_machine = $this->manufacturing_settings_model->get_default_machine($mould_id);
            echo json_encode($default_machine);
        }
    }
    
    public function get_work_hour()
    {
        if ($this->input->is_ajax_request()) {
            $work_hour = $this->manufacturing_settings_model->get_work_hour();
            echo json_encode($work_hour);
        }
    }

    public function get_energy_price()
    {
        if ($this->input->is_ajax_request()) {
            $energy_price = $this->manufacturing_settings_model->get_energy_price();
            echo json_encode($energy_price);
        }
    }

    public function get_operation_cost()
    {
        if ($this->input->is_ajax_request()) {
            $operation_cost = $this->manufacturing_settings_model->get_operation_cost();
            echo json_encode($operation_cost);
        }
    }

    public function op_cost_per_sec()
    {
        if ($this->input->is_ajax_request()) {
           $this->app->get_table_data('operation_cost');
       }

        $data['title'] = _l('op_cost_per_sec');
        $this->load->view('admin/manufacturing_settings/op_cost_per_sec/manage', $data);
    }

    public function manage_op_cost_per_sec()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            if ($data['opcid'] == '') {
                $success = $this->manufacturing_settings_model->add_op_cost_per_sec($data);
                $message = '';
                if ($success == true) {
                    $message = _l('added_successfully', _l('op_cost_per_sec'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            } else {
                $success = $this->manufacturing_settings_model->edit_op_cost_per_sec($data);
                $message = '';
                if ($success == true) {
                    $message = _l('updated_successfully', _l('op_cost_per_sec'));
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
            }
        }
    }
}
