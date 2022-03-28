var expanded = false;
var $ = jQuery || $;

function showCategories() {
    var checkboxes = document.getElementById("filters__categories");
    if (!expanded) {
        checkboxes.style.display = "block";
        expanded = true;
    } else {
        checkboxes.style.display = "none";
        expanded = false;
    }
}

function showTrades() {
    var checkboxes = document.getElementById("filters__trades");
    if (!expanded) {
        checkboxes.style.display = "block";
        expanded = true;
    } else {
        checkboxes.style.display = "none";
        expanded = false;
    }
}

function showProjects() {
    var checkboxes = document.getElementById("filters__projects");
    if (!expanded) {
        checkboxes.style.display = "block";
        expanded = true;
    } else {
        checkboxes.style.display = "none";
        expanded = false;
    }
}

$('input.select-box').on('change', function () {
    $('input.checkbox-box').not(this).prop('checked', false);
});

$('input.checkbox-box').on('change', function () {
    $(this).addClass('filter--selected')
    $('input.select-box').not(this).prop('checked', false).removeClass('filter--selected');
});

$('#newfilters').on('change', "input:checkbox", function () {
    var url = window.location.href;
    if ($(this).val() == 'pro') {
        location.href = `${url}&post_type=pro`;
    } else if ($(this).val() == 'post') {
        location.href = `${url}&post_type=post`;
    } else {
        $('#newfilters').submit();
    }
});

$('.filters__button').on('click', function() {
    $('.filters__arrow').toggleClass('open');
    $('.filters__form').toggleClass('d-none');
});