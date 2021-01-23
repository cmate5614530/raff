<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Wo_merge_fields extends App_merge_fields
{
    public function build()
    {
        return [
                [
                    'name'      => 'Work Order Number',
                    'key'       => '{wo_num}',
                    'available' => [
                        'work-order',
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
    public function format($staff_id, $wo_id)
    {
        $fields = [];

        $this->ci->db->where('staffid', $staff_id);
        $staff = $this->ci->db->get(db_prefix().'staff')->row();

        $fields['{staff_firstname}']   = '';
        $fields['{staff_lastname}']    = '';
        $fields['{wo_num}'] = '';

        if (!$staff) {
            return $fields;
        }


        $fields['{staff_firstname}']   = $staff->firstname;
        $fields['{staff_lastname}']    = $staff->lastname;

        $fields['{wo_num}']    = '<a href="' . admin_url('planning/work_order/' . $wo_id) . '">' . format_invoice_number($wo_id) . '</a>';
        // print_r($fields); exit();
        return hooks()->apply_filters('wo_merge_fields', $fields, [
        'id'    => $staff_id,
        'staff' => $staff,
     ]);
    }

}
