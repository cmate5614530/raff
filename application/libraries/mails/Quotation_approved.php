<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Quotation_approved extends App_mail_template
{
    protected $for = 'quotation';

    protected $staff_email;

    protected $quotation_id;

    protected $staffid;

    public $slug = 'quotation-approval-notification';

    public $rel_type = 'proposal';

    public function __construct($staff_email, $staffid, $quotation_id)
    {
        parent::__construct();
        $this->staff_email       = $staff_email;
        $this->staffid           = $staffid;
        $this->quotation_id = $quotation_id;
    }

    public function build()
    {
        $this->to($this->staff_email)
        ->set_rel_id($this->staffid)
        ->set_merge_fields('proposals_merge_fields', $this->quotation_id, $this->staffid);
    }
}
