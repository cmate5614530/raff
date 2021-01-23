<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Stock_warning extends App_mail_template
{
    protected $for = 'stock-warning';

    protected $staff_email;

    protected $product_id;

    protected $warehouse_id;

    protected $staffid;

    public $slug = 'warehouse-overloaded';

    public $rel_type = 'stock-warning';

    public function __construct($staff_email, $staffid, $product_id,$warehouse_id)
    {
        parent::__construct();
        $this->staff_email       = $staff_email;
        $this->staffid           = $staffid;
        $this->product_id = $product_id;
        $this->warehouse_id = $warehouse_id;
    }

    public function build()
    {
        $this->to($this->staff_email)
        ->set_rel_id($this->staffid)
        ->set_merge_fields('stock_warning_merge_fields', $this->staffid, $this->product_id, $this->warehouse_id);
    }
}