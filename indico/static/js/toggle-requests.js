$(function () {
    $('#requests-closed').toggle();
    $('#requests-pending').toggle();
    $(".btn-request-toggle").click(function (e) {
        e.preventDefault();
        el = $(this).data('element');
        if (el == el)
        $('#requests-open').toggle(false);
        $('#requests-closed').toggle(false);
        $('#requests-pending').toggle(false);
        $(el).toggle(true);
    });
});