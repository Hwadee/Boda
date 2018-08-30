//根据身份证号填写生日
function showBirth(IDcode, birthday) {
    var ID = IDcode.value;
    var year, month, day;
    if (ID != '') {
        if (ID.length == 18) {
            year = ID.substr(6, 4);
            month = ID.substr(10, 2);
            day = ID.substr(12, 2);
        }
    }
    document.getElementById(birthday).value = year + "-" + month + "-" + day;
}