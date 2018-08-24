jQuery(function ($) {
    var table = $('tbody#body'), text = $(':text#lookfor');
    $(':button#test').click(function () {
        table.find('tr').hide();
        table.find('tr:contains("' + text.val() + '")').show();
    });
});