function edit() {
    //将文本框可修改

    document.getElementById("name").readOnly=false;
    document.getElementById("sex").readOnly=false;
    document.getElementById("birthday").readOnly=false;

    document.getElementById("weight").readOnly=false;
    document.getElementById("height").readOnly=false;
    document.getElementById("education").readOnly=false;

    document.getElementById("phone").readOnly=false;

    //下拉框可修改
    var select1 = document.getElementsByName("sel");
    for(var i=0;i<select1.length;i++){
        select1[i].removeAttribute("disabled");
        select1[i].parentNode.className="selector";
        //select1[i].style="color:black";
    }
    var select2 = document.getElementsByName("city");
    for(i=0;i<select2.length;i++){
        select2[i].removeAttribute("disabled");
        select2[i].parentNode.className="selector";
        //select2[i].style="color:black";
    }


    //切换下面的按钮
    var b = document.getElementById("b1");
    b.disabled = 'disabled';
    document.getElementById("b2").disabled = false;

}

function Tabclick(v) {
    //tab的按键样式切换
    var llis = document.getElementsByName("chos");
    for(var i = 0; i < llis.length; i++) {
        var lli = llis[i];
        lli.classList.remove("activeTab");
        if(lli == document.getElementById("li" + v)) {
            lli.classList.add("activeTab");
        }
    }
//表单页面切换
    var tabs = document.getElementsByName("tab");
    for(var j=0;j<tabs.length;j++){
        tabs[j].style.display="none";
        if(tabs[j] == document.getElementById('tab'+v)){
            tabs[j].style.display="block";
        }
    }
}