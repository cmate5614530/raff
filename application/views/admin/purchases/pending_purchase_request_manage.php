<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="clearfix"></div>
                        <hr class="hr-panel-heading" />
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('purchase_no'),
                            _l('updated_at'),
                            _l('requested_product'),
                            _l('purchase_phase'),
                            _l('approval'),
                            _l('bought_company_name'),
                            _l('notes'),
                            _l('created_user'),
                            _l('last_updated_user'),
                        ),'pending_purchase_request'); ?>
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
        initDataTable('.table-pending_purchase_request', window.location.href);
    });

</script>
</body>
</html>