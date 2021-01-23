<?php

defined('BASEPATH') or exit('No direct script access allowed');

include_once(APPPATH . 'libraries/App_items_table_template.php');

class App_items_table extends App_items_table_template
{
    public function __construct($transaction, $type, $for = 'html', $admin_preview = false)
    {
        // Required
        $this->type          = strtolower($type);
        $this->admin_preview = $admin_preview;
        $this->for           = $for;

        $this->set_transaction($transaction);
        $this->set_items($transaction->items);

        parent::__construct();
    }

    /**
     * Builds the actual table items rows preview
     * @return string
     */
    public function items()
    {
        $html = '';


        $descriptionItemWidth = $this->get_description_item_width();

        $regularItemWidth  = $this->get_regular_items_width(6);
        $customFieldsItems = $this->get_custom_fields_for_table();

        if ($this->for == 'html') {
            $descriptionItemWidth = $descriptionItemWidth - 5;
            $regularItemWidth     = $regularItemWidth - 5;
        }

        $i = 1;
        foreach ($this->items as $item) {
            // print_r($item); exit();
            $itemHTML = '';

            // Open table row
            $itemHTML .= '<tr' . $this->tr_attributes($item) . '>';

            // Table data number
            $itemHTML .= '<td' . $this->td_attributes() . ' align="center" width="5%">' . $i . '</td>';

            $itemHTML .= '<td class="description" width="10%" align="left;" >';

            /**
             * Item product name
             */
            if (!empty($item['product_name'])) {
                $itemHTML .= '<span style="font-size:' . $this->get_pdf_font_size() . 'px;"><strong>'
                . $this->period_merge_field($item['product_name'])
                . '</strong></span>';

            }

            $itemHTML .= '</td>';

            /* Item Pack Capacity*/
            $itemHTML .= '<td align="right" width="8%">' . $item['pack_capacity'].'</td>';

            /**
             * Item quantity
             */
            // $itemHTML .= '<td align="right" width="9%">' . round(floatVal($item['qty']), 2);
            $itemHTML .= '<td align="right" width="9%">' . $item['qty'];

            $itemHTML .= '</td>';

            /**
             * Maybe item has added unit?
             */
            $unit = $this->ci->db->query('SELECT name FROM '.db_prefix().'units WHERE unitid='.$item['unit'])->row()->name;

            $itemHTML .= '<td align="right" width="10%">' . $unit;

            $itemHTML .= '</td>';

            /*Original Price*/
            $itemHTML .= '<td align="right" width="9%">' . floatVal($item['original_price']);

            $itemHTML .= '</td>';

            /* Sale Price */

            $itemHTML .= '<td align="right" width="9%">' . floatVal($item['sale_price']);

            $itemHTML .= '</td>';

            /* volume_m3 */

            $itemHTML .= '<td align="right" width="10%">' . floatVal($item['volume_m3']);

            $itemHTML .= '</td>';

            /* approval need */

            if($item['approval_need'])
            {
                $approval = _l('approval_need');
            } else {
                $approval = _l('approval_not_need');
            }

            $itemHTML .= '<td align="right" width="10%">' . $approval;

            $itemHTML .= '</td>';

            /* Notes */

            $itemHTML .= '<td align="right" width="10%">' . $item['notes'];

            $itemHTML .= '</td>';

            $item_amount_with_quantity = hooks()->apply_filters(
                'item_preview_amount_with_currency',
                app_format_money(($item['qty'] * $item['sale_price']), $this->transaction->currency_name, $this->exclude_currency()),
                $item,
                $this->transaction,
                $this->exclude_currency()
            );

            /* Amounts */


            $itemHTML .= '<td class="amount" align="right" width="10%">' . $item_amount_with_quantity . '</td>';

            // Close table row
            $itemHTML .= '</tr>';
            $html .= $itemHTML;

            $i++;
        }
        // print_r($html); exit();
        return $html;
    }

    public function items1()
    {
        $html = '';


        $descriptionItemWidth = $this->get_description_item_width();

        $regularItemWidth  = $this->get_regular_items_width(6);
        $customFieldsItems = $this->get_custom_fields_for_table();

        if ($this->for == 'html') {
            $descriptionItemWidth = $descriptionItemWidth - 5;
            $regularItemWidth     = $regularItemWidth - 5;
        }

        $i = 1;
        foreach ($this->items as $item) {
            $itemHTML = '';

            // Open table row
            $itemHTML .= '<tr' . $this->tr_attributes($item) . '>';

            // Table data number
            $itemHTML .= '<td' . $this->td_attributes() . ' align="center" width="5%">' . $i . '</td>';

            $itemHTML .= '<td class="description" width="10%" align="left;" >';

            /**
             * Item product name
             */
            if (!empty($item['product_name'])) {
                $itemHTML .= '<span style="font-size:' . $this->get_pdf_font_size() . 'px;"><strong>'
                . $this->period_merge_field($item['product_name'])
                . '</strong></span>';

            }

            $itemHTML .= '</td>';

            /* Item Pack Capacity*/
            $itemHTML .= '<td align="right" width="8%">' . $item['pack_capacity'].'</td>';

            /**
             * Item quantity
             */
            $itemHTML .= '<td align="right" width="9%">' . floatVal($item['qty']);

            $itemHTML .= '</td>';

            /**
             * Maybe item has added unit?
             */
            $unit = $this->ci->db->query('SELECT name FROM '.db_prefix().'units WHERE unitid='.$item['unit'])->row()->name;

            $itemHTML .= '<td align="right" width="10%">' . $unit;

            $itemHTML .= '</td>';

            /* volume_m3 */

            $itemHTML .= '<td align="right" width="10%">' . floatVal($item['volume_m3']);

            $itemHTML .= '</td>';

            /* approval need */

            if($item['approval_need'])
            {
                $approval = _l('approval_need');
            } else {
                $approval = _l('approval_not_need');
            }

            $itemHTML .= '<td align="right" width="10%">' . $approval;

            $itemHTML .= '</td>';

            /* Notes */

            $itemHTML .= '<td align="right" width="10%">' . $item['notes'];

            $itemHTML .= '</td>';
            
            $html .= $itemHTML;

            $i++;
        }
        return $html;
    }


    /**
     * Html headings preview
     * @return string
     */
    public function html_headings()
    {
        $descriptionItemWidth = $this->get_description_item_width();

        $regularItemWidth  = $this->get_regular_items_width(6);

        if ($this->for == 'html') {
            $descriptionItemWidth = $descriptionItemWidth - 5;
            $regularItemWidth     = $regularItemWidth - 5;
        }

        $html = '<tr>';
        $html .= '<th width="2%" align="right">' . '#' . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('product_name') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('pack_capacity') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('qty') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('unit') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('original_price') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('sale_price') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('volume_m3') . '</th>';
        $html .= '<th width="' . $descriptionItemWidth . '%" align="right">' . _l('approval_need') . '</th>';
        $html .= '<th width="' . $descriptionItemWidth . '%" align="right">' . _l('notes') . '</th>';
        $html .= '<th width="8%" align="right">'.$this->amount_heading().'</th>';
        // $html .= '<th align="center">' . $this->number_heading() . '</th>';
        // $html .= '<th class="description" width="' . $this->get_description_item_width() . '%" align="left">' . $this->item_heading() . '</th>';

        // $customFieldsItems = $this->get_custom_fields_for_table();
        // foreach ($customFieldsItems as $cf) {
        //     $html .= '<th class="custom_field" align="left">' . $cf['name'] . '</th>';
        // }

        // $html .= '<th align="right">' . $this->qty_heading() . '</th>';
        // $html .= '<th align="right">' . $this->rate_heading() . '</th>';
        // if ($this->show_tax_per_item()) {
        //     $html .= '<th align="right">' . $this->tax_heading() . '</th>';
        // }
        // $html .= '<th align="right">' . $this->amount_heading() . '</th>';
        $html .= '</tr>';

        return $html;
    }

    public function html_headings1()
    {
        $descriptionItemWidth = $this->get_description_item_width();

        $regularItemWidth  = $this->get_regular_items_width(6);

        if ($this->for == 'html') {
            $descriptionItemWidth = $descriptionItemWidth - 5;
            $regularItemWidth     = $regularItemWidth - 5;
        }

        $html = '<tr>';
        $html .= '<th width="2%" align="right">' . '#' . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('product_name') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('pack_capacity') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('qty') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('unit') . '</th>';
        $html .= '<th width="' . $regularItemWidth . '%" align="right">' . _l('volume_m3') . '</th>';
        $html .= '<th width="' . $descriptionItemWidth . '%" align="right">' . _l('approval_need') . '</th>';
        $html .= '<th width="' . $descriptionItemWidth . '%" align="right">' . _l('notes') . '</th>';
        $html .= '</tr>';

        return $html;
    }

    /**
     * PDF headings preview
     * @return string
     */
    public function pdf_headings()
    {
        $descriptionItemWidth = $this->get_description_item_width();
        $regularItemWidth     = $this->get_regular_items_width(6);

        $tblhtml = '<tr height="30" bgcolor="' . get_option('pdf_table_heading_color') . '" style="color:' . get_option('pdf_table_heading_text_color') . ';">';

        $tblhtml .= '<th width="5%;" align="center">' . '#' . '</th>';
        $tblhtml .= '<th width="10%" align="left">' . _l('product_name'). '</th>';
        $tblhtml .= '<th width="8%" align="left">' . _l('pack_capacity'). '</th>';
        $tblhtml .= '<th width="9%" align="left">' . _l('qty'). '</th>';
        $tblhtml .= '<th width="10%" align="left">' . _l('unit'). '</th>';
        $tblhtml .= '<th width="9%" align="left">' . _l('original_price'). '</th>';
        $tblhtml .= '<th width="9%" align="left">' . _l('sale_price'). '</th>';
        $tblhtml .= '<th width="10%" align="left">' . _l('volume_m3'). '</th>';
        $tblhtml .= '<th width="10%" align="left">' . _l('approval_need'). '</th>';
        $tblhtml .= '<th width="10%" align="left">' . _l('notes'). '</th>';
        $tblhtml .= '<th width="10%" align="right">' . $this->amount_heading() . '</th>';
        $tblhtml .= '</tr>';

        return $tblhtml;
    }

    // public function pdf_headings()
    // {
    //     $descriptionItemWidth = $this->get_description_item_width();
    //     $regularItemWidth     = $this->get_regular_items_width(6);
    //     $customFieldsItems    = $this->get_custom_fields_for_table();

    //     $tblhtml = '<tr height="30" bgcolor="' . get_option('pdf_table_heading_color') . '" style="color:' . get_option('pdf_table_heading_text_color') . ';">';

    //     $tblhtml .= '<th width="5%;" align="center">' . $this->number_heading() . '</th>';
    //     $tblhtml .= '<th width="' . $descriptionItemWidth . '%" align="left">' . $this->item_heading() . '</th>';

    //     foreach ($customFieldsItems as $cf) {
    //         $tblhtml .= '<th width="' . $regularItemWidth . '%" align="left">' . $cf['name'] . '</th>';
    //     }

    //     $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->qty_heading() . '</th>';
    //     $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->rate_heading() . '</th>';

    //     if ($this->show_tax_per_item()) {
    //         $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->tax_heading() . '</th>';
    //     }

    //     $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->amount_heading() . '</th>';
    //     $tblhtml .= '</tr>';

    //     return $tblhtml;
    // }

    /**
     * Check for period merge field for recurring invoices
     *
     * @return string
     */
    protected function period_merge_field($text)
    {
        if ($this->type != 'invoice') {
            return $text;
        }

        // Is subscription invoice
        if (!property_exists($this->transaction, 'recurring_type')) {
            return $text;
        }

        $compareRecurring = $this->transaction->recurring_type;
        $compareDate      = !$this->transaction->last_recurring_date ? $this->transaction->date : $this->transaction->last_recurring_date;
        $transactionDate  = $this->transaction->date;

        // Is not Y-m-d format
        if (!preg_match('/^(\d{4})-(\d{1,2})-(\d{1,2})$/', $compareDate)) {
            $compareDate = to_sql_date($compareDate);
        }

        if (!preg_match('/^(\d{4})-(\d{1,2})-(\d{1,2})$/', $transactionDate)) {
            $transactionDate = to_sql_date($transactionDate);
        }

        if ($this->transaction->custom_recurring == 0) {
            $compareRecurring = 'month';
        }

        $next_date = date('Y-m-d', strtotime(
            '+' . $this->transaction->recurring . ' ' . strtoupper($compareRecurring),
            strtotime($compareDate)
        ));

        return str_ireplace('{period}', _d($transactionDate) . ' - ' . _d(date('Y-m-d', strtotime('-1 day', strtotime($next_date)))), $text);
    }

    protected function get_description_item_width()
    {
        $item_width = hooks()->apply_filters('item_description_td_width', 38);

        // If show item taxes is disabled in PDF we should increase the item width table heading
        return $this->show_tax_per_item() == 0 ? $item_width + 15 : $item_width;
    }

    protected function get_regular_items_width($adjustment)
    {
        $descriptionItemWidth = $this->get_description_item_width();
        $customFieldsItems    = $this->get_custom_fields_for_table();
        // Calculate headings width, in case there are custom fields for items
        $totalheadings = $this->show_tax_per_item() == 1 ? 4 : 3;
        $totalheadings += count($customFieldsItems);

        return (100 - ($descriptionItemWidth + $adjustment)) / $totalheadings;
    }
}
