<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Purchase_merge_fields extends App_merge_fields
{
    public function build()
    {
        return [
                [
                    'name'      => 'Purchase Phase',
                    'key'       => '{purchase_phase}',
                    'available' => [
                        'purchase',
                    ],
                    'templates' => [
                        'purchase-created',
                    ],
                ],

                [

                    'name'      => _l('approval'),
                    'key'       => '{approval}',
                    'available' => [
                        'purchase',
                    ],
                    'templates' => [
                        'purchase-created',
                    ],
                ],

                [
                    'name'      => 'Purchase Link',
                    'key'       => '{purchase_link}',
                    'available' => [
                        'purchase',
                    ],
                    'templates' => [
                        'purchase-created',
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
    public function format($staff_id, $purchase_id)
    {
        $fields = [];

        $this->ci->db->where('staffid', $staff_id);
        $staff = $this->ci->db->get(db_prefix().'staff')->row();

        $fields['{staff_firstname}']   = '';
        $fields['{staff_lastname}']    = '';
        $fields['{purchase_phase}'] = '';
        $fields['{client_company}'] = '';

        if (!$staff) {
            return $fields;
        }


        $fields['{staff_firstname}']   = $staff->firstname;
        $fields['{staff_lastname}']    = $staff->lastname;

        $this->ci->db->select(db_prefix().'purchase_order.*, '.db_prefix().'clients.company as company, '.db_prefix().'purchase_order_phases.phase');
        $this->ci->db->join(db_prefix().'clients',db_prefix().'clients.userid='.db_prefix().'purchase_order.acc_list','left');
        $this->ci->db->join(db_prefix().'purchase_order_phases',db_prefix().'purchase_order_phases.id='.db_prefix().'purchase_order.purchase_phase_id','left');
        $this->ci->db->where(db_prefix().'purchase_order.id',$purchase_id);
        $purchase_order = $this->ci->db->get(db_prefix().'purchase_order')->row();
        
        $fields['{purchase_phase}'] = $purchase_order->phase;
        $fields['{client_company}'] = $purchase_order->company;

        if($purchase_order->approval == 1)
            $fields['{approval}'] = _l('approval_need');
        else
            $fields['{approval}'] = _l('approval_not_need');

        $fields['{purchase_link}'] = admin_url('purchases/manage_purchase_order/' . $purchase_order->id);

        return hooks()->apply_filters('purchase_merge_fields', $fields, [
        'id'    => $staff_id,
        'staff' => $staff,
     ]);
    }

}
