<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="modal fade proposal-convert-modal" id="convert_to_estimate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-xxl" role="document">
        <?php echo form_open('admin/proposals/convert_to_estimate/'.$proposal->id,array('id'=>'proposal_convert_to_estimate_form','class'=>'_transaction_form disable-on-submit')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" onclick="close_modal_manually('#convert_to_estimate')" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('convert_to_sale_order'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php //$this->load->view('admin/estimates/estimate_template'); ?>
                        <?php $this->load->view('admin/proposals/estimate_template'); ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" onclick="close_modal_manually('#convert_to_estimate')">
                    <?php echo _l('close'); ?>
                </button>
                <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>
<?php $this->load->view('admin/invoice_items/item'); ?>
<script>
    init_ajax_search('customer','#clientid.ajax-search');
    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');
    custom_fields_hyperlink();
    init_selectpicker();
    init_datepicker();
    init_color_pickers();
    init_items_sortable();
    init_tags_inputs();
    validate_estimate_form('#proposal_convert_to_estimate_form');
    <?php if($proposal->assigned != 0){ ?>
    $('#convert_to_estimate #sale_agent').selectpicker('val',<?php echo $proposal->assigned; ?>);
    <?php } ?>
    $('select[name="discount_type"]').selectpicker('val','<?php echo $proposal->discount_type; ?>');
    $('input[name="discount_percent"]').val('<?php echo $proposal->discount_percent; ?>');
    $('input[name="discount_total"]').val('<?php echo $proposal->discount_total; ?>');
    <?php if(is_sale_discount($proposal,'fixed')) { ?>
        $('.discount-total-type.discount-type-fixed').click();
    <?php } ?>
    $('input[name="adjustment"]').val('<?php echo $proposal->adjustment; ?>');
    $('input[name="show_quantity_as"][value="<?php echo $proposal->show_quantity_as; ?>"]').prop('checked',true).change();
    $('#convert_to_estimate #clientid').change();
    // Trigger item select width fix
    $('#convert_to_estimate').on('shown.bs.modal', function(){
        $('#item_select').trigger('change')
    })

    $("body").on('change', 'select[name="item_select"]', function () {
        var itemid = $(this).selectpicker('val');
        if (itemid != '') {
            add_item_to_preview_quote(itemid);
        }
    });

    $('#pack_capacity').change(function(){
      var pack_capacity = $(this).val();
      requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
        $('input[name="volume_m3"]').val(response.volume);
      });
    })

    $('.pack_capacity').change(function(){
      var pack_capacity = $(this).val();
      var currentV = $(this).parents('tr').children()[7].firstChild;
      console.log(currentV)
      requestGetJSON('warehouses/get_pack_by_capacity/' + pack_capacity).done(function(response) {
        currentV.value = response.volume;
      });
    })

    // $('input[name="discount_percent"]').keyup(function(){
    //   calculate_total_quote()
    // })

    // $('input[name="discount_total"]').keyup(function(){
    //   calculate_total_quote()
    // })

    $('input[name="discount_percent"]').change(function(){
      calculate_total_quote()
    })

    $('input[name="discount_total"]').change(function(){
      calculate_total_quote()
    })

    $(document).ready(function(){
      calculate_total_quote();
    })

</script>
