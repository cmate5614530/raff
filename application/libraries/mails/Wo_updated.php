<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Wo_updated extends App_mail_template
{
    protected $for = 'work-order';

    protected $staff_email;

    protected $wo_id;

    protected $staffid;

    public $slug = 'work-order-updated';

    public $rel_type = 'work-order';

    public function __construct($staff_email, $staffid, $wo_id)
    {
        parent::__construct();
        $this->staff_email       = $staff_email;
        $this->staffid           = $staffid;
        $this->wo_id = $wo_id;
    }

    public function build()
    {
        $this->to($this->staff_email)
        ->set_rel_id($this->staffid)
        ->set_merge_fields('wo_merge_fields', $this->staffid, $this->wo_id);
    }
}
