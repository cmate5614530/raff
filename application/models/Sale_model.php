<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Sale_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    /*-------------Pricing Category-------------*/
    public function add_pricing_category($data)
    {
        unset($data['pricingCatId']);
        $this->db->insert(db_prefix() . 'pricing_categories', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('NewPricing Category Added [ID: ' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function edit_pricing_category($data)
    {
        $currencyid = $data['pricingCatId'];
        unset($data['pricingCatId']);
        $this->db->where('id', $currencyid);
        $this->db->update(db_prefix() . 'pricing_categories', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Pricing Category Updated [' . $data['name'] . ']');

            return true;
        }

        return false;
    }

    public function delete_pricing_category($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'pricing_categories');
        if ($this->db->affected_rows() > 0) {

           log_activity('Pricing Category Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

    public function get_pricing_category($no = '')
    {
        $this->db->from(db_prefix() . 'pricing_categories');
        $this->db->join(db_prefix() . 'currencies', '' . db_prefix() . 'currencies.id = ' . db_prefix() . 'pricing_categories.default_currency', 'left');
        if (is_numeric($no)) {
            $this->db->where(db_prefix() . 'pricing_categories.order_no', $no);
            return $this->db->get()->row();
        }
        return $this->db->get()->result_array();
    }

    public function get_pricing_category_list()
    {
        $this->db->from(db_prefix() . 'pricing_categories');
        return $this->db->get()->result_array();
    }

    public function get_pricing_category_permission($id)
    {
        $this->db->from(db_prefix() . 'price_category_permission');
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'price_category_permission.staff_id', $id);
            return $this->db->get()->row();
        }
    }

    /*---------Sale Phases-----------*/
    public function add_sale_phases($data)
    {
        unset($data['salephaseid']);
        $this->db->insert(db_prefix() . 'sale_phases', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
           log_activity('New Sale Phase Added [ID: ' . $data['phase'] . ']');
            return true;
        }
        return false;
    }

    public function edit_sale_phases($data)
    {
        $sale_phase_id = $data['salephaseid'];
        unset($data['salephaseid']);
        $this->db->where('id', $sale_phase_id);
        $this->db->update(db_prefix() . 'sale_phases', $data);
        if ($this->db->affected_rows() > 0) {
           log_activity('Sale Phase Updated [' . $data['phase'] . ']');
            return true;
        }
        return false;
    }

    public function delete_sale_phases($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'sale_phases');
        if ($this->db->affected_rows() > 0) {

           log_activity('Sale Phase Deleted [' . $id . ']');

            return true;
        }
        return false;
    }

    public function get_sale_phases()
    {
        $this->db->order_by('order_no', 'asc');
        return $this->db->get(db_prefix() . 'sale_phases')->result_array();
    }

    /*----------Quote Phases------*/
    public function add_quote_phases($data)
    {
        unset($data['quoteId']);
        $this->db->insert(db_prefix() . 'quote_phase', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('Quote Phase Added [ID: ' . $data['phase'] . ']');

            return true;
        }
        return false;
    }

    public function edit_quote_phases($data)
    {
        $installation_id = $data['quoteId'];
        unset($data['quoteId']);
        $this->db->where('id', $installation_id);
        $this->db->update(db_prefix() . 'quote_phase', $data);
        if ($this->db->affected_rows() > 0) {
            log_activity('Quote phase Updated [' . $data['phase'] . ']');

            return true;
        }
        return false;
    }

    public function delete_quote_phases($id)
    {
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'quote_phase');
        if ($this->db->affected_rows() > 0) {

            log_activity('Quote phase Deleted [' . $id . ']');

            return true;
        }
        return false;
    }

    public function get_quote_phases()
    {
        $this->db->from(db_prefix() . 'quote_phase');
        return $this->db->get()->result_array();
    }
}