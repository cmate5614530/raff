<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                                <a href="#" class="btn btn-info pull-left" data-toggle="modal" data-target="#mould_suitability"><?php echo _l('new_mould_suitability'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('machine_id'),
                            _l('mould_id'),
                            _l('options'),
                        ),'mould-suitability'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="mould_suitability" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <span class="edit-title"><?php echo _l('edit_mould_suitability'); ?></span>
                    <span class="add-title"><?php echo _l('add_mould_suitability'); ?></span>
                </h4>
            </div>
            <?php echo form_open('admin/manufacturing_settings/manage_moulds_suitability',array('id'=>'mouldID')); ?>
            <?php echo form_hidden('mouldID'); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">

                        <?php echo render_select('machine_id',$machine_list,array('id','name'),_l('machine_id')); ?>
                        <?php echo render_select('mould_id',$mould_list,array('id','mould_name'),_l('mould_id')); ?>
                        <div class="checkbox checkbox-primary no-mtop checkbox-inline">
                            <input type="checkbox" name="default_machine" id="default_machine">
                            <label for="default_machine"><i class="fa fa-question-circle" data-toggle="tooltip" data-placement="left" title="" ></i> <?php echo _l('default_machine'); ?></label>
                        </div>

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

        initDataTable('.table-mould-suitability', window.location.href,'undefined','undefined','undefined',[1, 'asc']);

        appValidateForm($('form'), {
            mould_id: 'required',
            machine_id: 'required',


        }, manage_mould_suitability);

        $('#mould_suitability').on('show.bs.modal', function(event) {

            var button = $(event.relatedTarget)
            var id = button.data('id');
            // console.log(id)
            $('#mould_suitability').find('#machine_id').selectpicker('val', '');
            $('#mould_suitability').find('#mould_id').selectpicker('val', '');
            $('input[name="default_machine"]').prop('checked',false);

            $('#mould_suitability .add-title').removeClass('hide');
            $('#mould_suitability .edit-title').addClass('hide');

            if (typeof(id) !== 'undefined') {
                $('input[name="mouldID"]').val(id);
                $('#mould_suitability .add-title').addClass('hide');
                $('#mould_suitability .edit-title').removeClass('hide');

                var modalSuitable = $('#mould_suitability');
                requestGetJSON('manufacturing_settings/get_suitability/' + id).done(function (response) {

                    modalSuitable.find('#machine_id').selectpicker('val', response.machine_id);
                    modalSuitable.find('#mould_id').selectpicker('val', response.mould_id);
                    init_selectpicker();
                });
                requestGetJSON('manufacturing_settings/get_default_machine_status/' + id).done(function (response) {
                    var default_machine = response.default_machine;
                    // console.log(default_machine);
                    if(default_machine == 1){
                        $('input[name="default_machine"]').prop('checked',true);
                    } else {
                        $('input[name="default_machine"]').prop('checked',false);
                    }
                });
            }
        });
    });

    function manage_mould_suitability(form) {
        var data = $(form).serialize();
        var url = form.action;
        $.post(url, data).done(function(response) {
            response = JSON.parse(response);
            console.log(response);
            if (response.success == true) {
                $('.table-mould-suitability').DataTable().ajax.reload();
                alert_float('success', response.message);
            }
            if(response.flag == true)
            {
                alert_float('danger', response.msg);
            }
            $('#mould_suitability').modal('hide');
        });
        return false;
    }

</script>
</body>
</html>
