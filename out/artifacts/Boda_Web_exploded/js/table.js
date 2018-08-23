//删除功能
function del(r){
    var i = r.parentNode.parentNode.rowIndex ;//得到行号
    document.getElementById('listTable').deleteRow(i);
}

//修改功能
function modify(obj){
    var oNum = document.getElementById('password1');
    var oUser = document.getElementById('name');
    var oDep = document.getElementById('department');
    var oJob = document.getElementById('job')
    var oTr = obj.parentNode.parentNode;
    var aTd = oTr.getElementsByTagName('td');
    var rowIndex = obj.parentNode.parentNode.rowIndex;
    oNum.value = aTd[0].innerHTML;
    oUser.value = aTd[1].innerHTML;
    oDep.value = aTd[2].innerHTML;
    oJob.value = aTd[3].innerHTML;
    del(obj);
    //console.log(aTd[4].innerHTML);
    //alert(i);

}

//确认更新
function update(obj){
    var oNum = document.getElementById('password1').value;
    var oUser = document.getElementById('name').value;
    var oDep = document.getElementById('department').value;
    var oJob = document.getElementById('job').value;

    var oTable = document.getElementById('body');
    var oTr=document.createElement("tr");

    //cellpadding="0" cellspacing="0" width="100%" class="sTable
    oTr.cellpadding="0";
    oTr.cellspacing="0";
    oTr.width="100%";

    var oTd1 = document.createElement('td');
    oTd1.innerHTML = oNum;
    //align="center width="180"
    oTd1.setAttribute('align','center');

    var oTd2 = document.createElement('td');
    oTd2.setAttribute('align','center');
    oTd2.innerHTML = oUser;
    var oTd3 = document.createElement('td');
    oTd3.setAttribute('align','center');
    oTd3.innerHTML = oDep;
    var oTd4 = document.createElement('td');
    oTd4.setAttribute('align','center');
    oTd4.innerHTML = oJob;
    var oTd5 = document.createElement('td');

    oTd5.setAttribute('align','center');
    //<input type="button" value="删除" class="redB" onclick="del(this)"/>
    var oInput1 = document.createElement('input');
    oInput1.setAttribute('type','button');
    oInput1.setAttribute('value','删除');
    oInput1.setAttribute('class','redB');
    oInput1.setAttribute('onclick','del(this)');
    //oInput1.setAttribute('/');
    //<input type="button" value="修改" class="blueB" onclick="modify(this)"/>
    var oInput2 = document.createElement('input')
    oInput2.setAttribute('type','button');
    oInput2.setAttribute('value','修改');
    oInput2.setAttribute('class','blueB');
    oInput2.setAttribute('onclick','modify(this)');
    oTd5.appendChild(oInput1)
    oTd5.appendChild(document.createTextNode(" "));
    oTd5.appendChild(oInput2);

    oTr.appendChild(oTd1);
    oTr.appendChild(oTd2);
    oTr.appendChild(oTd3);
    oTr.appendChild(oTd4);
    oTr.appendChild(oTd5);
    oTable.appendChild(oTr);


}

//表内name=loan的添加标签
function red() {
    var arr = document.getElementsByName("loan");
    var i=0;
    for(;i<arr.length;i++){
        if(arr[i].innerText=="逾期未还"){
            arr[i].innerHTML = "<b style=\"color: darkred;\">逾期未还</b>";
        }
    }
}

//将表内input改为可修改
function edit() {
    //将文本框可修改
    var arr = document.getElementsByName("change");
    for(var i=0;i<arr.length;i++){
        arr[i].readOnly=false;
    }
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