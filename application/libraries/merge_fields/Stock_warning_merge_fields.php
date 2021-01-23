<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Stock_warning_merge_fields extends App_merge_fields
{
    public function build()
    {
        return [
                [
                    'name'      => 'Product Name',
                    'key'       => '{stock}',
                    'available' => [
                        'stock-warning',
                    ],
                ],
                [
                    'name'      => 'Warehouse Name',
                    'key'       => '{warehouse}',
                    'available' => [
                        'stock-warning',
                    ],
                ],
            ];
    }

    /**
    * Merge field for staff members
    * @param  mixed $staff_id staff id
    * @param  string $password password is used only when sending welcome email, 1 time
    * @return array
    */
    public function format($staff_id, $product_id, $warehouse_id)
    {
        $fields = [];

        $this->ci->db->where('staffid', $staff_id);
        $staff = $this->ci->db->get(db_prefix().'staff')->row();

        $fields['{staff_firstname}']   = '';
        $fields['{staff_lastname}']    = '';
        $fields['{stock}'] = '';
        $fields['{warehouse}'] = '';

        if (!$staff) {
            return $fields;
        }

        $fields['{staff_firstname}']   = $staff->firstname;
        $fields['{staff_lastname}']    = $staff->lastname;

        $this->ci->db->where('id', $product_id);
        $fields['{stock}'] = $this->ci->db->get(db_prefix().'stock_lists')->row()->product_name;

        $this->ci->db->where('id', $warehouse_id);
        $fields['{warehouse}'] = $this->ci->db->get(db_prefix().'warehouses')->row()->warehouse_name;

        return hooks()->apply_filters('so_merge_fields', $fields, [
        'id'    => $staff_id,
        'staff' => $staff,
     ]);
    }

}
