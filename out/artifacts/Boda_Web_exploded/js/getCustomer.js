$(document).ready(function(){
    $.ajax({
        url:"",
        type:"post",
        async:false,
        success:function (data) {
            var html="";
            for(var i=0;i < data.length;i++){
                var ls = data[i];
                html += "<td><tr align=\"center\" >" + ls.customer_id + "</tr><tr align='center'>" + ls.customer_name + "</tr><tr align='center'>" + ls.customer_sex + "</tr><tr align='center'>" + ls.customer_identify_id + "</tr><tr align='center'>" + ls.customer_birthday + "</tr><tr align='center'>" + ls.customer_email + "</tr><tr align='center'>" + ls.customer_phone + "</tr><tr align='center'>" + ls.customer_address + "</tr><tr align='center'>" +ls.customer_credit + "</tr><tr align='center'>" + ls.loan_state + "</tr></td>"
                $("#body").html(html);
            }
        }
    })
})