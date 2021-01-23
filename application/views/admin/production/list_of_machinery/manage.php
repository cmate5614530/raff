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
                            _l('machine_name'),
                            _l('options'),
                        ),'list-machine-production'); ?>
                    </div>
                </div>

                <div class="panel_s">
                    <div class="panel-body" style="overflow-x: auto;" id="machine_calendear_div">
                        <div class="dt-loader hide"></div>
                        <div id="machine_calendar"></div>
                    </div>
                </div>
                
            </div>
            <!-- <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div class="panel_s">
                    <div class="panel-body" style="overflow-x: auto;" id="machine_calendear_div">
                        <div class="dt-loader hide"></div>
                        <div id="machine_calendar"></div>
                    </div>
                </div>
            </div>
             <div class="col-md-3">
            </div> -->
        </div>
    </div>
</div>
<?php $this->load->view('admin/production/list_of_machinery/machine_calendar_template'); ?>
<?php hooks()->do_action('after_calendar_loaded');?>
<?php init_tail(); ?>
<script>
    app.calendarIDs = '<?php echo json_encode($google_ids_calendars); ?>';

    $(function(){

        initDataTable('.table-list-machine-production', window.location.href);
        
    });

    $(function(){
        if(get_url_param('eventid')) {
            view_machine_event(get_url_param('eventid'));
        }
    });

    function get_event_by_machine(row){
        var machine_id = $(row).parents('tr').find('.machine_id').val();
        var machine_name = $(row).parents('tr').find('.machine_name').text();
        if(machine_id)
        {
            one_machine_schedule_set(machine_id,machine_name)
        }
    }

    function one_machine_schedule_set(machine_id = '', machine_name = '')
    {
        $('#machine_calendar').remove();
        $('#machine_calendear_div').append('<div id="machine_calendar"></div>')
        validate_calendar_form();
        var calendar_settings = {
            themeSystem: 'bootstrap3',
            customButtons: {},
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,viewFullCalendar,calendarFilter'
            },
            editable: false,
            eventLimit: parseInt(app.options.calendar_events_limit) + 1,

            views: {
                day: {
                    eventLimit: false
                }
            },
            defaultView: app.options.default_view_calendar,
            isRTL: (isRTL == 'true' ? true : false),
            eventStartEditable: false,
            timezone: app.options.timezone,
            firstDay: parseInt(app.options.calendar_first_day),
            year: moment.tz(app.options.timezone).format("YYYY"),
            month: moment.tz(app.options.timezone).format("M"),
            date: moment.tz(app.options.timezone).format("DD"),
            loading: function(isLoading, view) {
                isLoading && $('#machine_calendar .fc-header-toolbar .btn-default').addClass('btn-info').removeClass('btn-default').css('display', 'block');
                !isLoading ? $('.dt-loader').addClass('hide') : $('.dt-loader').removeClass('hide');
            },
            eventSources: [{
                url: admin_url + 'utilities/get_calendar_data_by_machine/'+ machine_id,
                data: function() {
                    var params = {};
                    $('#calendar_filters').find('input:checkbox:checked').map(function() {
                        params[$(this).attr('name')] = true;
                    }).get();
                    if (!jQuery.isEmptyObject(params)) {
                        params['calendar_filters'] = true;
                    }
                    return params;
                },
                type: 'POST',
                error: function() {
                    // console.error('There was error fetching calendar data');
                },
            }, ],
            dayClick: function(date, jsEvent, view) {
                
                var d = date.format();
                view_produced_qty(d,machine_id,machine_name)
                return false;
            },
        };
        if ($("body").hasClass('dashboard')) {
            calendar_settings.customButtons.viewFullCalendar = {
                text: app.lang.calendar_expand,
                click: function() {
                    window.location.href = admin_url + 'utilities/calendar';
                }
            };
        }
        calendar_settings.customButtons.calendarFilter = {
            text: app.lang.filter_by.toLowerCase(),
            click: function() {
                slideToggle('#calendar_filters');
            }
        };
        $('#machine_calendar').fullCalendar(calendar_settings);
        var new_event = get_url_param('new_event');
        if (new_event) {
            $("input[name='start'].datetimepicker").val(get_url_param('date'));
            $('#machineNewEventModal').modal('show');
        }
    }

    function view_produced_qty(date,machine_id = '',machine_name = '')
    {
        // $.post(admin_url + 'utilities/get_calendar_data_by_machine_date/'+ {machine_id:machine_id,date:date}).done(function(res){
        $.post(admin_url + 'utilities/get_calendar_data_by_machine_date',{
            machine_id:machine_id,date:date
        }).done(function(res){
            var event = JSON.parse(res);
            for(let i = 0; i < event.length; i++)
                if(event[i]){
                    let start_date = new Date(event[i].start).setHours(0,0,0);
                    let end_date = event[i].end;

                    if(end_date) {
                        end_date = new Date(event[i].end).setHours(0,0,0);
                    }
                    current_date = new Date(date).setHours(0,0,0);
                    if(start_date <= current_date && current_date < end_date)
                    {
                        
                        $.post(admin_url + 'production/get_total_amount/' + event[i].eventid).done(function(res) {
                            var needed_qty = event[i].total_production_qty;
                            if(res){
                                needed_qty = (needed_qty - res).toFixed(2);
                                console.log(needed_qty)
                            }
                            $.post(admin_url + 'production/get_produced_qty/',{date:date,machine_id:machine_id}).done(function(response) {
                                if(response){
                                    $('#event').html(response);
                                    $('#machine_name_on_view').empty();
                                    $('#machine_name_on_view').append(machine_name);
                                    $('#date_on_view').empty();
                                    $('#date_on_view').append(date);
                                    $('#total_p_qty_on_view').empty();
                                    $('#total_p_qty_on_view').append(event[i].total_production_qty);
                                    $('#needed_p_qty_on_view').empty();
                                    $('#needed_p_qty_on_view').append(needed_qty);
                                    $('#viewMachineEvent').modal('show');
                                     validate_calendar_form();
                                } else {
                                    $("input[name='current_time_selection']").val(date);
                                    $("input[name='machine_id']").val(machine_id);
                                    $("input[name='rel_event_id']").val(event[i].eventid);
                                    $('#machine_name').empty();
                                    $('#machine_name').append(machine_name);
                                    $('#date').empty();
                                    $('#date').append(date);
                                    $('#total_p_qty').empty();
                                    $('#total_p_qty').append(event[i].total_production_qty);
                                    $('#needed_p_qty').empty();
                                    $('#needed_p_qty').append(needed_qty);
                                    $('#machineNewEventModal').modal('show');
                                }
                            });
                        })
                        
                    }
                }
        });
        
    }


</script>
</body>
</html>
