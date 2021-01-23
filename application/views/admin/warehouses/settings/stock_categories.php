<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                            <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#stock_category_modal"><?php echo _l('new_stock_category'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('order_no'),
                            _l('name'),
                            _l('options'),
                        ),'stock-category'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="stock_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('edit_stock_category'); ?></span>
                    <span class="add-title"><?php echo _l('new_stock_category'); ?></span>
                </h4>
            </div>
            <?php echo form_open('admin/warehouses/stock_categories_manage',array('id'=>'stockId')); ?>
            <?php echo form_hidden('stockId'); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php echo render_input('order_no',_('order_no'),'','number'); ?>
                        <?php echo render_input('name',_l('name'),'','text'); ?>
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

        initDataTable('.table-stock-category', window.location.href, [1], [1]);

        appValidateForm($('form'), {
            name: 'required',
            take_from: 'required',
            export_to: 'required',
        }, manage_installation_process);

        $('#stock_category_modal').on('show.bs.modal', function(event) {

            var button = $(event.relatedTarget)
            var id = button.data('id');

            $('#stock_category_modal input[name="name"]').val('');
            $('#stock_category_modal input[name="order_no"]').val('');

            $('#stock_category_modal .add-title').removeClass('hide');
            $('#stock_category_modal .edit-title').addClass('hide');

            if (typeof(id) !== 'undefined') {
                $('input[name="stockId"]').val(id);
                var order_no = $(button).parents('tr').find('td').eq(0).text();
                var name = $(button).parents('tr').find('td').eq(1).text();
                // var name = $(button).parents('tr').find('td');
                $('#stock_category_modal .add-title').addClass('hide');
                $('#stock_category_modal .edit-title').removeClass('hide');
                $('#stock_category_modal input[name="name"]').val(name);
                $('#stock_category_modal input[name="order_no"]').val(order_no);

                // var $installationModal = $('#stock_category_modal');
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
                $('.table-stock-category').DataTable().ajax.reload();
                alert_float('success', response.message);
            }
            $('#stock_category_modal').modal('hide');
        });
        return false;
    }

</script>
</body>
</html>
