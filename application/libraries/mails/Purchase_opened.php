<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Purchase_opened extends App_mail_template
{
    protected $for = 'purchase';

    protected $staff_email;

    protected $purchase_id;

    protected $staffid;

    public $slug = 'purchase-created';

    public $rel_type = 'purchase';

    public function __construct($staff_email, $staffid, $purchase_id)
    {
        parent::__construct();
        $this->staff_email       = $staff_email;
        $this->staffid           = $staffid;
        $this->purchase_id = $purchase_id;
    }

    public function build()
    {
        $this->to($this->staff_email)
        ->set_rel_id($this->staffid)
        ->set_merge_fields('purchase_merge_fields', $this->staffid, $this->purchase_id);
    }
}
