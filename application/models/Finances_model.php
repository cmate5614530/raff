<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Finances_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function add_currency($data)
    {
        unset($data['currencyid']);
        $data['name'] = strtoupper($data['name']);
        $this->db->insert(db_prefix() . 'currencies_exchange', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Currency Exchange Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    /**
     * @param  array $_POST data
     * @return boolean
     * Update currency values
     */
    public function edit_currency($data)
    {
        $currencyid = $data['currencyid'];
        unset($data['currencyid']);
        $data['name'] = strtoupper($data['name']);
        $this->db->where('id', $currencyid);
        $this->db->update(db_prefix() . 'currencies_exchange', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Currency Exchange Updated [' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    /**
     * @param  integer ID
     * @return mixed
     * Delete currency from database, if used return array with key referenced
     */
    public function delete_currency($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'currencies_exchange');
        if ($this->db->affected_rows() > 0) {

           log_activity('Currency Exchange Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_currency_exchange()
    {
        return $this->db->get(db_prefix().'currencies_exchange')->result_array();
    }
}