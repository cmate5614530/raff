<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="_buttons">
                            <a href="<?php echo admin_url('warehouses/manage_purchase_request'); ?>" class="btn btn-info pull-left" ><?php echo _l('new_purchase_request'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('purchase_no'),
                            _l('updated_at'),
                            _l('purchase_phase'),
                            _l('approval'),
                            _l('bought_company_name'),
                            _l('notes'),
                            _l('created_user'),
                            _l('last_updated_user'),
                        ),'purchase_request'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
</div>

<?php init_tail(); ?>
<script>
    $(function(){
        initDataTable('.table-purchase_request', window.location.href);
    });
</script>
</body>
</html>