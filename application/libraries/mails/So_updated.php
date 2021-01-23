<?php

defined('BASEPATH') or exit('No direct script access allowed');

class So_updated extends App_mail_template
{
    protected $for = 'sale-order';

    protected $staff_email;

    protected $so_id;

    protected $staffid;

    public $slug = 'sale-order-updated';

    public $rel_type = 'sale-order';

    public function __construct($staff_email, $staffid, $so_id)
    {
        parent::__construct();
        $this->staff_email       = $staff_email;
        $this->staffid           = $staffid;
        $this->so_id = $so_id;
    }

    public function build()
    {
        $this->to($this->staff_email)
        ->set_rel_id($this->staffid)
        ->set_merge_fields('so_merge_fields', $this->staffid, $this->so_id);
    }
}
