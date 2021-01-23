<?php

defined('BASEPATH') or exit('No direct script access allowed');

class So_merge_fields extends App_merge_fields
{
    public function build()
    {
        return [
                [
                    'name'      => 'Sale Order Number',
                    'key'       => '{so_num}',
                    'available' => [
                        'sale-order',
                    ],
                ],
                // [
                //     'name'      => 'Sale Order Link',
                //     'key'       => '{so_link}',
                //     'available' => [
                //         'purchase',
                //     ],
                // ],
            ];
    }

    /**
    * Merge field for staff members
    * @param  mixed $staff_id staff id
    * @param  string $password password is used only when sending welcome email, 1 time
    * @return array
    */
    public function format($staff_id, $so_id)
    {
        $fields = [];

        $this->ci->db->where('staffid', $staff_id);
        $staff = $this->ci->db->get(db_prefix().'staff')->row();

        $fields['{staff_firstname}']   = '';
        $fields['{staff_lastname}']    = '';
        $fields['{so_num}'] = '';

        if (!$staff) {
            return $fields;
        }


        $fields['{staff_firstname}']   = $staff->firstname;
        $fields['{staff_lastname}']    = $staff->lastname;

        $fields['{so_num}']    = '<a href="' . admin_url('sale/sale_order/' . $so_id) . '">' . format_estimate_number($so_id) . '</a>';

        return hooks()->apply_filters('so_merge_fields', $fields, [
        'id'    => $so_id,
        'staff' => $staff,
     ]);
    }

}
