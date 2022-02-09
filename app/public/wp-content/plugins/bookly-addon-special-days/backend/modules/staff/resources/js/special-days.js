(function ($) {

    var SpecialDays = function($container,options) {
        var obj = this,
            special_days_popup_content;
        jQuery.extend(obj.options, options);
        if (options.reload) {
            $container.html('<div class="bookly-loading"></div>');
            $.ajax({
                type: 'POST',
                url: ajaxurl,
                data: {
                    action: 'bookly_special_days_staff_special_days',
                    staff_id: obj.options.staff_id,
                    csrf_token: BooklyL10nGlobal.csrf_token,
                    location_id: obj.options.location_id
                },
                dataType: 'json',
                xhrFields: {withCredentials: true},
                crossDomain: 'withCredentials' in new XMLHttpRequest(),
                success: function (response) {
                    var $html = $.parseHTML(response.data.html);
                    initContentListeners($html);
                    // fill in the container
                    $container.html($html);
                    init($container, obj);
                    obj.options.onLoad();
                }
            });
        } else {
            initContentListeners($container);
            init($container, obj);
        }

        function init($container, obj) {
            let $addButton = $('#bookly-js-special-days-add-day', $container);

            $addButton.daterangepicker({
                parentEl: obj.options.container,
                singleDatePicker: false,
                showDropdowns: true,
                autoUpdateInput: false,
                locale: obj.options.l10n.datePicker
            }).on('apply.daterangepicker', function (ev, picker) {
                var ladda = rangeTools.ladda($addButton[0]);
                ladda.start();
                $.ajax({
                    method: 'POST',
                    url: ajaxurl,
                    data: {
                        action: 'bookly_special_days_add_day',
                        csrf_token: BooklyL10nGlobal.csrf_token,
                        staff_id: obj.options.staff_id,
                        start_date: picker.startDate.format('YYYY-MM-DD'),
                        end_date: picker.endDate.format('YYYY-MM-DD'),
                        start_time: obj.options.l10n.start_time,
                        end_time: obj.options.l10n.end_time,
                        location_id: obj.options.location_id
                    },
                    dataType: 'json',
                    xhrFields: {withCredentials: true},
                    crossDomain: 'withCredentials' in new XMLHttpRequest(),
                    success: function (response) {
                        if (response.success) {
                            var $html = $.parseHTML(response.data.html);
                            $('input[name="staff_id"]', $container).before($html);
                            initContentListeners($container);
                            findDuplicates();
                        } else {
                            if (response.data && response.data.message) {
                                obj.options.saving({error: [response.data.message]});
                            }
                        }
                    }
                }).always(function () {
                    ladda.stop();
                });
            });

            special_days_popup_content = $container.find('.bookly-js-edit-break-body > div').html();
            $('.bookly-js-date[data-date!=""][data-date]', $container).each(function () {
                let startDate = moment($(this).data('date'), 'YYYY-MM-DD'),
                    dp = $(this).data('daterangepicker');
                $(this).val(startDate.format(obj.options.l10n.datePicker.format));
                dp.setStartDate(startDate);
                dp.setEndDate(startDate);
            });

            // Set listeners for special days container.
            $container.off().on('click', '#bookly-js-special-days-reset', function (e) {
                $(this).closest('form').trigger('reset');
                findDuplicates();
                e.preventDefault();
            }).on('change', '.bookly-js-date', function () {
                findDuplicates();
            }).on('click', '#bookly-js-special-days-save-days', function (e) {
                e.preventDefault();
                // Listener for saving new special days in modal window.
                var $form = $(this).closest('form'),
                    ladda = rangeTools.ladda(this),
                    data = {};

                /* Convert customer date format to YYYY-MM-DD */
                $form.serializeArray().map(function (elem) {
                    if (elem.name.indexOf('[date]') !== -1) {
                        var date = moment($form.find('[name="' + elem.name + '"]').val(), obj.options.l10n.datePicker.format).format('YYYY-MM-DD');
                        if (date != 'Invalid date') {
                            data[elem.name] = date;
                        }
                    } else {
                        data[elem.name] = elem.value;
                    }
                });
                data.action = 'bookly_special_days_save_days';
                data.csrf_token = BooklyL10nGlobal.csrf_token;
                $.ajax({
                    method: 'POST',
                    url: ajaxurl,
                    data: data,
                    dataType: 'json',
                    xhrFields: {withCredentials: true},
                    crossDomain: 'withCredentials' in new XMLHttpRequest(),
                    success: function (response) {
                        if (response.success) {
                            obj.options.saving({success: [obj.options.l10n.saved]});
                            $container.find('.form-row.bg-danger').removeClass('bg-danger');
                        } else {
                            if (response.data) {
                                if (response.data.message) {
                                    response.data.ids.forEach(function (ssd_row_id) {
                                        $('.bookly-js-range-row.ssd_id-' + ssd_row_id, $container).find('.form-row').addClass('bg-danger');
                                    });

                                    obj.options.validation(response.data.ids, response.data.message);
                                }
                            }
                        }
                    }
                }).always(function () {
                    ladda.stop();
                });
            }).on('click', '.popover-body .bookly-js-save-break', function (e) {
                e.preventDefault();
                // Listener for saving break.
                var $button = $(this),
                    $sd_break_form = $(this).closest('.popover-body'),
                    ssd_break_id = $button.data('ssd_break_id'),
                    ladda = rangeTools.ladda(this);
                e.preventDefault();
                $.ajax({
                    method: 'POST',
                    url: ajaxurl,
                    data: {
                        action: 'bookly_special_days_save_break',
                        csrf_token: BooklyL10nGlobal.csrf_token,
                        staff_special_day_id: $button.data('ssd_id'),
                        staff_special_days_breaks_id: ssd_break_id,
                        start_time: $sd_break_form.find('.bookly-js-popover-range-start').val(),
                        end_time: $sd_break_form.find('.bookly-js-popover-range-end').val()
                    },
                    dataType: 'json',
                    xhrFields: {withCredentials: true},
                    crossDomain: 'withCredentials' in new XMLHttpRequest(),
                    success: function (response) {
                        if (response.success) {
                            if (ssd_break_id) {
                                // Change text on button with new range value.
                                var $interval_button = $('button.bookly-js-special-days-toggle-popover.bookly-js-break-interval[data-ssd_break_id="' + ssd_break_id + '"]');
                                $interval_button.html(response.data.interval);
                            } else {
                                var $html = $.parseHTML(response.data.html);
                                initContentListeners($html);
                                $('.bookly-js-range-row.ssd_id-' + $button.data('ssd_id')).find('.breaks-list-content').append($html);
                            }
                            $button.parents('.bookly-popover').booklyPopover('hide');
                        } else {
                            if (response.data && response.data.message) {
                                obj.options.booklyAlert({error: [response.data.message]});
                            }
                        }
                    }
                }).always(function () {
                    ladda.stop()
                });
            }).on('change', '.bookly-js-popover-range-start', function () {
                rangeTools.hideInaccessibleBreaks($(this), $(this).parents('.bookly-popover').find('.bookly-js-popover-range-end'), $('[aria-describedby="' + $(this).closest('.bookly-popover').attr('id') + '"]').closest('.bookly-js-range-row'));
            }).on('click', '#bookly-js-special-days-delete-all', function (e) {
                e.preventDefault();
                if (confirm(obj.options.l10n.are_you_sure)) {
                    var ids = [];
                    var ssd_rows = [];
                    $(':checkbox[data-ssd_id]:checked').each(function (index, elem) {
                        ids.push($(elem).data('ssd_id'));
                        ssd_rows.push($(elem).closest('.bookly-js-range-row'));
                    });
                    if (ids.length > 0) {
                        var ladda = rangeTools.ladda(this);
                        $.ajax({
                            method: 'POST',
                            url: ajaxurl,
                            data: {
                                action: 'bookly_special_days_delete_days',
                                ids: ids,
                                staff_id: obj.options.staff_id,
                                csrf_token: BooklyL10nGlobal.csrf_token
                            },
                            dataType: 'json',
                            xhrFields: {withCredentials: true},
                            crossDomain: 'withCredentials' in new XMLHttpRequest(),
                            success: function (response) {
                                if (response.success) {
                                    ssd_rows.forEach(function (elem) {
                                        $(elem).remove();
                                    });
                                } else {
                                    if (response.data && response.data.message) {
                                        obj.options.saving({error: [response.data.message]});
                                    }
                                }
                                findDuplicates();
                            }
                        }).always(function () {
                            ladda.stop()
                        });
                    }
                }
            }).on('click', '.delete-break[data-ssd_break_id]', function (e) {
                // Delete break.
                e.preventDefault();
                if (confirm(obj.options.l10n.are_you_sure)) {
                    var $button = $(this),
                        ladda = rangeTools.ladda(this);
                    $.ajax({
                        method: 'POST',
                        url: ajaxurl,
                        data: {
                            action: 'bookly_special_days_delete_break',
                            id: $button.data('ssd_break_id'),
                            staff_id: obj.options.staff_id,
                            csrf_token: BooklyL10nGlobal.csrf_token
                        },
                        dataType: 'json',
                        xhrFields: {withCredentials: true},
                        crossDomain: 'withCredentials' in new XMLHttpRequest(),
                        success: function (response) {
                            if (response.success) {
                                $button.closest('.bookly-js-breaks-wrapper').remove();
                            } else {
                                if (response.data && response.data.message) {
                                    obj.options.saving({error: [response.data.message]});
                                }
                            }
                        }
                    }).always(function () {
                        ladda.stop();
                    });
                }
            })
            // Change location
            .on('change', '#staff_location_id', function () {
                let options = {
                    reload: true,
                    staff_id: obj.options.staff_id,
                    l10n: obj.options.l10n,
                    location_id: this.value
                };

                new BooklyStaffSpecialDays($container, options);
            })
            // Change default/custom settings for location
            .on('change', '#custom_location_settings', function () {
                if (this.value === '1') {
                    $('#bookly-staff-special-days', $container).show();
                } else {
                    $('#bookly-staff-special-days', $container).hide();
                }
            }); // end listeners for special days container.
            $('#custom_location_settings', $container).trigger('change');
        }

        function initContentListeners ($content) {
            $('.bookly-js-date', $content).daterangepicker({
                parentEl        : obj.options.container,
                singleDatePicker: true,
                showDropdowns   : true,
                autoUpdateInput : false,
                locale          : obj.options.l10n.datePicker
            }).on('apply.daterangepicker', function (ev, picker) {
                $(this).val(picker.startDate.format(obj.options.l10n.datePicker.format)).trigger('change');
            });

            $('.bookly-js-parent-range-start', $content).each(function (index, elem) {
                rangeTools.hideUp24Hours($(elem), $(elem).closest('.bookly-js-range-row').find('.bookly-js-parent-range-end'));
            });
            // init 'add break' functionality for special days
            $('.bookly-js-special-days-toggle-popover', $content).off().booklyPopover({
                html: true,
                placement: 'bottom',
                container: $content,
                template: '<div class="bookly-popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>',
                trigger: 'manual',
                content: function () {
                    return $(special_days_popup_content);
                }
            }).on('click', function () {
                var $button = $(this);
                $button.booklyPopover('toggle');
                var $popover = $($button.data('bs.popover').tip).booklyPopover(),
                    $form = $popover.find('.popover-body'),
                    $break_start = $form.find('.bookly-js-popover-range-start'),
                    $break_end = $form.find('.bookly-js-popover-range-end'),
                    force_keep_values = false;
                $('.bookly-popover').not($popover).booklyPopover('hide');
                if ($button.hasClass('bookly-js-break-interval')) {
                    var interval = $button.html().trim().split(' - ');
                    rangeTools.setVal($break_start, interval[0]);
                    rangeTools.setVal($break_end, interval[1]);
                    force_keep_values = true;
                    $form.find('.bookly-js-save-break').data('ssd_break_id', $button.data('ssd_break_id')).data('ssd_id', $button.data('ssd_id'));
                } else {
                    var $ssd_row = $button.closest('.form-row');
                    $break_start.val($ssd_row.find('.bookly-js-parent-range-start').val());
                    $break_end.val($ssd_row.find('.bookly-js-parent-range-end').val());
                    $form.find('.bookly-js-save-break').data('ssd_id', $button.data('ssd_id')).removeAttr('ssd_break_id');
                    rangeTools.setPopoverRangeDefault($break_start, $break_end, $button.closest('.bookly-js-range-row'));
                }

                rangeTools.hideInaccessibleBreaks($break_start, $break_end, $button.closest('.bookly-js-range-row'), force_keep_values);
                $popover.find('.bookly-js-close').on('click', function () {
                    $popover.booklyPopover('hide');
                });
            });
        }

        /**
         * Function to find and mark duplicated dates
         * The same function presented in service_special_days.js
         */
        function findDuplicates()
        {
            var all_dates = [];
            $('.bookly-js-range-row .bookly-js-date', $container).each(function () {
                all_dates.push($(this).val());
            });

            var found_duplicates = false;

            $('.bookly-js-range-row',$container).each(function() {
                $(this).find('.form-row').removeClass('bg-danger');

                var $current_row_date = $(this).find('.bookly-js-date'),
                    current_date = $current_row_date.val(),
                    $error = $(this).find('.bookly-js-staff-special-days-error');
                $error.find('.text-success').remove();

                if (moment().startOf('day').isAfter(moment(current_date, obj.options.l10n.datePicker.format))) {
                    $error.append('<div class="text-success">' + obj.options.l10n.past_date_error + '</div>')
                }
                var duplicated_dates = all_dates.filter(function(item){
                    return item === current_date;
                });

                if (duplicated_dates.length > 1 && current_date) {
                    $(this).find('.form-row').addClass('bg-danger');
                    found_duplicates = true;
                }
            });

            if (found_duplicates) {
                $('.bookly-special-days-error').html(obj.options.l10n.duplicate_error);
                $('#bookly-js-special-days-save-days').prop('disabled', true);
            } else {
                $('.bookly-special-days-error').html('');
                $('#bookly-js-special-days-save-days').prop('disabled', false);
            }

            obj.options.validation(found_duplicates, obj.options.l10n.duplicate_error);
        }
    };

    SpecialDays.prototype.options = {
        reload: false,
        staff_id: -1,
        location_id: null,
        container: '#bookly-staff-edit-modal',
        saving: function (alerts) {
            $(document.body).trigger('staff.saving', [alerts]);
        },
        booklyAlert: function (alerts) {
            booklyAlert(alerts);
        },
        l10n: {},
        onLoad: function () {},
        validation: function (has_error, info) {
            $(document.body).trigger('staff.validation', ['staff-special-days', has_error, info]);
        },
    };

    window.BooklyStaffSpecialDays = SpecialDays;
})(jQuery);