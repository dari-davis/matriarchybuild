jQuery(function ($) {
    $(document.body).on('service.initForm', {},
        // Bind an event handler to the components for service panel.
        function (event, $panel, service_id) {
            let $container = $('#bookly-services-special-days', $panel),
                $addButton = $('.bookly-js-service-special-days-add-day', $container)
            ;
            initContentListeners($container);
            $('.bookly-js-date[data-date!=""][data-date]', $container).each(function () {
                let startDate = moment($(this).data('date'), 'YYYY-MM-DD'),
                    dp = $(this).data('daterangepicker');
                $(this).val(startDate.format(ServiceSpecialDaysL10n.datePicker.format));
                dp.setStartDate(startDate);
                dp.setEndDate(startDate);
            });
            $addButton.daterangepicker({
                parentEl: $('#bookly-edit-service-modal'),
                singleDatePicker: false,
                showDropdowns: true,
                autoUpdateInput: false,
                locale: ServiceSpecialDaysL10n.datePicker
            }).on('apply.daterangepicker', function (ev, picker) {
                var ladda = rangeTools.ladda($addButton[0]);
                ladda.start();
                $.ajax({
                    method: 'POST',
                    url: ajaxurl,
                    data: {
                        action: 'bookly_special_days_add_for_service',
                        csrf_token: BooklyL10nGlobal.csrf_token,
                        service_id: service_id,
                        start_date: picker.startDate.format('YYYY-MM-DD'),
                        end_date: picker.endDate.format('YYYY-MM-DD'),
                        start_time: ServiceSpecialDaysL10n.start_time,
                        end_time: ServiceSpecialDaysL10n.end_time
                    },
                    dataType: 'json',
                    success: function (response) {
                        if (response.success) {
                            var $html = $.parseHTML(response.data.html);
                            $('.bookly-js-special-days-list', $container).append($html);
                            initContentListeners($container);
                            findDuplicates();
                        } else {
                            if (response.data && response.data.message) {
                                booklyAlert({error: [response.data.message]});
                            }
                        }
                    }
                }).always(function () {
                    ladda.stop();
                });
            });
            $container.off().on('click', '#bookly-js-service-special-days-save-days', function () {
                // Listener for saving new special days in modal window.
                let $form = $(this).closest('form'),
                    ladda = rangeTools.ladda(this),
                    data = {};

                /* Convert customer date format to YYYY-MM-DD */
                $form.serializeArray().map(function (elem) {
                    if (elem.name.indexOf('[date]') !== -1) {
                        data[elem.name] = moment($form.find('[name="' + elem.name + '"]').val(), ServiceSpecialDaysL10n.datePicker.format).format('YYYY-MM-DD');
                    } else {
                        data[elem.name] = elem.value;
                    }
                });
                $.ajax({
                    method     : 'POST',
                    url        : ajaxurl,
                    data       : data,
                    dataType   : 'json',
                    xhrFields  : {withCredentials: true},
                    crossDomain: 'withCredentials' in new XMLHttpRequest(),
                    success    : function (response) {
                        var $ssd_container = $('.bookly-js-service-special-days-container', $container);
                        if (response.success) {
                            booklyAlert({success: [ServiceSpecialDaysL10n.saved]});
                            $ssd_container.find('.row.bg-danger').removeClass('bg-danger');
                        } else {
                            if (response.data) {
                                if (response.data.message) {
                                    booklyAlert({error: [response.data.message]});
                                    response.data.ids.forEach(function (ssd_row_id) {
                                        $ssd_container.find('.bookly-js-range-row.ssd_id-' + ssd_row_id).find('.row').addClass('bg-danger');
                                    });
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
                let $button      = $(this),
                    $popoverBody = $(this).closest('.popover-body'),
                    ssd_break_id = $button.data('ssd_break_id'),
                    ladda        = rangeTools.ladda(this),
                    ssd_id       = $button.data('ssd_id'),
                    data         = {
                        action     : 'bookly_special_days_save_break_for_service',
                        csrf_token : BooklyL10nGlobal.csrf_token,
                        start_time : $('.bookly-js-popover-range-start', $popoverBody).val(),
                        end_time   : $('.bookly-js-popover-range-end', $popoverBody).val(),
                        service_special_day_id        : ssd_id,
                        service_special_days_breaks_id: ssd_break_id,
                    };

                $.ajax({
                    method  : 'POST',
                    url     : ajaxurl,
                    data    : data,
                    dataType: 'json',
                    success : function (response) {
                        if (response.success) {
                            if (ssd_break_id) {
                                // Change text on button with new range value.
                                var $interval_button = $('button.bookly-js-toggle-popover.bookly-js-break-interval[data-ssd_break_id="' + ssd_break_id + '"]');
                                $interval_button.html(response.data.interval);
                            } else {
                                var $html = $.parseHTML(response.data.html);
                                initContentListeners($html);
                                $('button[data-ssd_id=' + ssd_id + ']', $container)
                                    .siblings('.bookly-js-breaks-list').append($html);
                            }
                            booklyAlert({success: [ServiceSpecialDaysL10n.saved]});
                            $button.parents('.bookly-popover').booklyPopover('hide');
                        } else {
                            if (response.data && response.data.message) {
                                booklyAlert({error: [response.data.message]});
                            }
                        }
                    }
                }).always(function () {
                    ladda.stop()
                });
            }).on('change', '.bookly-js-popover-range-start', function () {
                let $start  = $(this),
                    $popoverBody = $start.closest('.popover-body'),
                    $end    = $('.bookly-js-popover-range-end', $popoverBody),
                    ssd_id  = $('.bookly-js-save-break', $popoverBody).data('ssd_id'),
                    $parent = $('button[data-ssd_id=' + ssd_id + ']', $container).closest('.bookly-js-range-row');
                rangeTools.hideInaccessibleBreaks($start, $end, $parent);
            }).on('click', '#bookly-js-service-special-days-delete', function (e) {
                e.preventDefault();
                if (confirm(ServiceSpecialDaysL10n.are_you_sure)) {
                    var ids = [];
                    var ssd_rows = [];
                    $(':checkbox[data-ssd_id]:checked').each(function (index, elem) {
                        ids.push($(elem).data('ssd_id'));
                        ssd_rows.push($(elem).closest('.bookly-js-range-row'));
                    });
                    if (ids.length > 0) {
                        var ladda = rangeTools.ladda(this);
                        $.ajax({
                            method     : 'POST',
                            url        : ajaxurl,
                            data       : {action: 'bookly_special_days_delete_days_for_service', ids: ids, service_id: service_id, csrf_token: BooklyL10nGlobal.csrf_token},
                            dataType   : 'json',
                            xhrFields  : {withCredentials: true},
                            crossDomain: 'withCredentials' in new XMLHttpRequest(),
                            success    : function (response) {
                                if (response.success) {
                                    ssd_rows.forEach(function (elem) {
                                        $(elem).remove();
                                    });
                                } else {
                                    if (response.data && response.data.message) {
                                        booklyAlert({error: [response.data.message]});
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
                if (confirm(ServiceSpecialDaysL10n.are_you_sure)) {
                    var $button = $(this),
                        ladda   = rangeTools.ladda(this);
                    $.ajax({
                        method  : 'POST',
                        url     : ajaxurl,
                        data    : {action: 'bookly_special_days_delete_break_for_service', id: $button.data('ssd_break_id'), service_id: service_id, csrf_token: BooklyL10nGlobal.csrf_token},
                        dataType: 'json',
                        success : function (response) {
                            if (response.success) {
                                $button.parent().remove();
                            } else {
                                if (response.data && response.data.message) {
                                    booklyAlert({error: [response.data.message]});
                                }
                            }
                        }
                    }).always(function () {
                        ladda.stop();
                    });
                }
            }).on('change', '.bookly-js-date', function () {
                findDuplicates();
            });

            function initContentListeners($content) {
                $('.bookly-js-date', $content).daterangepicker({
                    parentEl        : '#bookly-edit-service-modal',
                    singleDatePicker: true,
                    showDropdowns   : true,
                    autoUpdateInput : false,
                    locale          : ServiceSpecialDaysL10n.datePicker
                }).on('apply.daterangepicker', function (ev, picker) {
                    $(this).val(picker.startDate.format(ServiceSpecialDaysL10n.datePicker.format)).trigger('change');
                    $container.find('[name="special_days[' + $(this).data('day_id') + '][date]"]').val(picker.startDate.format('YYYY-MM-DD'));
                });

                $('.bookly-js-parent-range-start', $content).each(function (index, elem) {
                    rangeTools.hideUp24Hours($(elem), $(elem).closest('.bookly-js-range-row').find('.bookly-js-parent-range-end'));
                });
                // init 'add break' functionality fos special days
                $('.bookly-js-toggle-popover', $content).booklyPopover({
                    html     : true,
                    placement: 'bottom',
                    container: $content,
                    template : '<div class="bookly-popover" role="tooltip"><div class="arrow"></div><div class="popover-body"></div></div>',
                    trigger  : 'manual',
                    content  : function () {
                        return $('.bookly-js-edit-break-body > div', $container).clone();
                    }
                }).on('click', function () {
                    let $button = $(this);
                    $button.booklyPopover('toggle');
                    let $popover = $($button.data('bs.popover').tip).booklyPopover(),
                        $popoverBody = $('.popover-body', $popover),
                        $popoverStart = $('.bookly-js-popover-range-start', $popover),
                        $popoverEnd = $('.bookly-js-popover-range-end', $popover),
                        $saveButton = $('.bookly-js-save-break', $popoverBody),
                        $ssd_row = $button.closest('.form-row'),
                        force_keep_values = false;
                    $popover.css({maxWidth: 280, width: 280});
                    $('.bookly-popover').not($popover).booklyPopover('toggle');
                    if ($button.hasClass('bookly-js-break-interval')) {
                        var interval = $button.html().trim().split(' - ');
                        rangeTools.setVal($popoverStart, interval[0]);
                        rangeTools.setVal($popoverEnd, interval[1]);
                        force_keep_values = true;
                        $saveButton
                        .data('ssd_break_id', $button.data('ssd_break_id'))
                        .data('ssd_id', $button.data('ssd_id'));
                    } else {
                        $popoverStart.val($ssd_row.find('.bookly-js-parent-range-start').val());
                        $popoverEnd.val($ssd_row.find('.bookly-js-parent-range-end').val());
                        $saveButton
                        .data('ssd_id', $button.data('ssd_id'))
                        .removeAttr('ssd_break_id');
                        rangeTools.setPopoverRangeDefault($popoverStart, $popoverEnd, $ssd_row);
                    }
                    rangeTools.hideInaccessibleBreaks($popoverStart, $popoverEnd, $ssd_row, force_keep_values);
                    $('.bookly-js-close', $popover).on('click', function () {
                        $popover.booklyPopover('hide');
                    });
                });
            }

            /**
             * Function to find and mark duplicated dates
             * The same function presented in service_days.js
             */
            function findDuplicates() {
                let all_dates = [],
                    found_duplicates = false,
                    $saveButton = $('.modal-footer #bookly-save', $container.closest('.modal-content')),
                    $serviceError = $('.bookly-js-service-error', $container.closest('.modal-content'))
                ;

                $container.find('.bookly-js-range-row .bookly-js-date').each(function () {
                    all_dates.push($(this).val());
                });

                $container.find('.bookly-js-range-row').each(function () {
                    $(this).find('.form-row').removeClass('bg-danger');

                    let $input = $(this).find('.bookly-js-date'),
                        current_row_date = $input.val(),
                        new_date = moment(current_row_date, ServiceSpecialDaysL10n.datePicker.format),
                        $error = $input.closest('.bookly-js-range-row').find('.bookly-js-service-special-days-error')
                    ;
                    $error.find('.text-success').remove();
                    if (moment().startOf('day').isAfter(new_date)) {
                        $error.append('<div class="text-success">' + ServiceSpecialDaysL10n.past_date_error + '</div>')
                    }

                    var duplicated_dates = all_dates.filter(function (item) {
                        return item === current_row_date;
                    });

                    if (duplicated_dates.length > 1 && current_row_date) {
                        $(this).find('.form-row').addClass('bg-danger');
                        found_duplicates = true;
                    }
                });

                $serviceError.find('.bookly-js-special-days-error').remove();
                if (found_duplicates) {
                    $serviceError.append('<div class="bookly-js-special-days-error bookly-js-error">' + ServiceSpecialDaysL10n.duplicate_error + '</div>');
                }
                $saveButton.prop('disabled', $serviceError.find('.bookly-js-error').length > 0);
            }
        }
    )
});