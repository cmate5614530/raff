<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                                <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#list_machine_modal"><?php echo _l('new_marchine'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('machine_name'),
                            _l('power_usage'),
                            _l('profit_expectation'),
                            _l('take_from'),
                            _l('export_to'),
                            _l('order_no'),
                            _l('active'),
                            _l('options'),
                            
                        ),'list-machine'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="list_machine_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('edit_marchine'); ?></span>
                    <span class="add-title"><?php echo _l('add_marchine'); ?></span>
                </h4>
            </div>
            <?php echo form_open('admin/manufacturing_settings/manage_list_of_machinery',array('id'=>'machineID')); ?>
            <?php echo form_hidden('machineID'); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php echo render_input('name',_l('machine_name'),'','text',array('placeholder'=>_l('machine_name'))); ?>


                        <?php echo render_input('power_usage',_l('power_usage'),'','number',array('placeholder'=>_l('power_usage'))); ?>

                        <?php echo render_input('profit_expectation',_l('profit_expectation'),'','number',array('placeholder'=>_l('profit_expectation'))); ?>
                        <?php echo render_input('order_no',_l('order_no'),'','number',array('placeholder'=>_l('order_no'))); ?>
                        <?php echo render_select('take_from',$warehouses,array('id','warehouse_name'),_l('take_from')); ?>
                        <?php echo render_select('export_to',$warehouses,array('id','warehouse_name'),_l('export_to')); ?>
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

        initDataTable('.table-list-machine', window.location.href, [7], [7]);

        appValidateForm($('form'), {
            name: 'required',
            power_usage: 'required',
            order_no: 'required',
            profit_expectation: 'required',
            take_from: 'required',
            export_to: 'required',

        }, manage_currencies);

        $('#list_machine_modal').on('show.bs.modal', function(event) {

            var button = $(event.relatedTarget)
            var id = button.data('id');

            $('#list_machine_modal input[name="name"]').val('');
            $('#list_machine_modal input[name="order_no"]').val('');
            // $('#list_machine_modal input[name="take_from"]').val('');
            // $('#list_machine_modal input[name="export_to"]').val('');
            $('#list_machine_modal').find('#take_from').selectpicker('val', '');
            $('#list_machine_modal').find('#export_to').selectpicker('val', '');

            $('#list_machine_modal input[name="profit_expectation"]').val('');
            $('#list_machine_modal input[name="power_usage"]').val('');


            $('#list_machine_modal .add-title').removeClass('hide');
            $('#list_machine_modal .edit-title').addClass('hide');

            if (typeof(id) !== 'undefined') {
                $('input[name="machineID"]').val(id);
                var name = $(button).parents('tr').find('td').eq(0).find('span.name').text();
                var power_usage = $(button).parents('tr').find('td').eq(1).text();
                var profit_expectation = $(button).parents('tr').find('td').eq(2).text();
                var order_no = $(button).parents('tr').find('td').eq(5).text();
                $('#list_machine_modal .add-title').addClass('hide');
                $('#list_machine_modal .edit-title').removeClass('hide');
                $('#list_machine_modal input[name="name"]').val(name);
                // $('#list_machine_modal input[name="default_currency"]').val(defaultCurrency);
                $('#list_machine_modal input[name="order_no"]').val(order_no);
                $('#list_machine_modal input[name="profit_expectation"]').val(profit_expectation);
                $('#list_machine_modal input[name="power_usage"]').val(power_usage);

                var modal = $('#list_machine_modal');
                requestGetJSON('manufacturing_settings/get_list_machine_by_id/' + id).done(function (response) {
                    modal.find('#take_from').selectpicker('val', response.take_from);
                    modal.find('#export_to').selectpicker('val', response.export_to);
                    init_selectpicker();
                });

            }
        });
    });
    /* CURRENCY MANAGE FUNCTIONS */
    function manage_currencies(form) {
        var data = $(form).serialize();
        var url = form.action;
        $.post(url, data).done(function(response) {
            response = JSON.parse(response);
            // console.log(response);
            if (response.success == true) {
                $('.table-list-machine').DataTable().ajax.reload();
                alert_float('success', response.message);
            }
            $('#list_machine_modal').modal('hide');
        });
        return false;
    }

</script>
</body>
</html>
