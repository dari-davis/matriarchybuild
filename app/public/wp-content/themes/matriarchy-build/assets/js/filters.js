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

function showRegions() {
    var checkboxes = document.getElementById("filters__regions");
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

$('#filters').on('change', "input:checkbox", function () {
    var url = window.location.href;
    var params = $(this).val();
    if ($(this).attr('name') == 'category') {
        location.href = `/?s=${$(this).val()}`;
    } else if (params == 'pro') {
        location.href = `${url}&post_type=pro`;
    } else if (params == 'post') {
        location.href = `${url}&post_type=post`;
    } else {
        $('#filters').submit();
    }
});