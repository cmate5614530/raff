<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                            <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#quote_phase_modal"><?php echo _l('new_quote_phase'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('name'),
                            _l('order_no'),
                            _l('options'),
                        ),'quote-phase'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="quote_phase_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('edit_quote_phase'); ?></span>
                    <span class="add-title"><?php echo _l('add_quote_phase'); ?></span>
                </h4>
            </div>
            <?php echo form_open('admin/sale/manage_quote_phases',array('id'=>'quoteId')); ?>
            <?php echo form_hidden('quoteId'); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php echo render_input('order_no',_l('order_no'),'','number'); ?>
                        <?php echo render_input('phase',_l('name'),'','text',array('placeholder'=>_l('phase_name'))); ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>
    $(function(){

        initDataTable('.table-quote-phase', window.location.href, [2], [2],'undefined',[1,'asc']);

        appValidateForm($('form'), {
            phase: 'required',

        }, manage_installation_process);

        $('#quote_phase_modal').on('show.bs.modal', function(event) {

            var button = $(event.relatedTarget)
            var id = button.data('id');

            $('#quote_phase_modal input[name="phase"]').val('');
            $('#quote_phase_modal input[name="order_no"]').val('');

            $('#quote_phase_modal .add-title').removeClass('hide');
            $('#quote_phase_modal .edit-title').addClass('hide');

            if (typeof(id) !== 'undefined') {
                $('input[name="quoteId"]').val(id);
                var phase = $(button).parents('tr').find('td').eq(0).text();
                var orderNo = $(button).parents('tr').find('td').eq(1).text();
                $('#quote_phase_modal .add-title').addClass('hide');
                $('#quote_phase_modal .edit-title').removeClass('hide');
                $('#quote_phase_modal input[name="phase"]').val(phase);
                $('#quote_phase_modal input[name="order_no"]').val(orderNo);

                // var $installationModal = $('#quote_phase_modal');
                // requestGetJSON('installation_process/get_installation_by_id/' + id).done(function (response) {
                //     // $installationModal.find('#take_from').selectpicker('val', response.take_from);
                //     // $installationModal.find('#export_to').selectpicker('val', response.export_to);
                //     init_selectpicker();
                // });

            }
        });
    });
    /* manage_installation_process MANAGE FUNCTIONS */
    function manage_installation_process(form) {
        var data = $(form).serialize();
        var url = form.action;
        $.post(url, data).done(function(response) {
            response = JSON.parse(response);
            // console.log(response);
            if (response.success == true) {
                $('.table-quote-phase').DataTable().ajax.reload();
                alert_float('success', response.message);
            }
            $('#quote_phase_modal').modal('hide');
        });
        return false;
    }

</script>
</body>
</html>
