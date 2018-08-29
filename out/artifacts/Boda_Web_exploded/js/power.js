//将下拉框的值传入到隐藏域里面
function getPosition() {
    //部门得到隐藏域
    document.getElementById("dep").value = document.getElementById("department").selectedIndex + 1;
    //职位得到隐藏域
    document.getElementById("pos").value = document.getElementById("position").selectedIndex + 1;
}

//修改下拉框，改变复选框
function changeCheckBox() {
    //获取当前选中的职位
    var position = document.getElementById("position").selectedIndex;
    //清空所有的选中
    var powers = document.getElementsByName("power");
    for (var i = 0; i < powers.length; i++) {
        powers[i].checked = false;
        powers[i].parentNode.classList.remove("checked")
    }
    //根据不同的权限加载现有权限
    if (position == 0) {
        powers[0].checked = true;
        powers[1].checked = true;
        powers[2].checked = true;
        powers[0].parentNode.classList.add("checked");
        powers[1].parentNode.classList.add("checked");
        powers[2].parentNode.classList.add("checked");
    } else if (position == 1) {


    } else if (position == 2) {


    } else {


    }
}

//修改部门下拉框，职位下拉框
function changePosition() {
    var depIndex = document.getElementById("department").selectedIndex;
    var position = document.getElementById("position");
    if (depIndex == 0) {
        position.options[0].innerHTML = "before1";
        position.options[1].innerHTML = "before2";
        position.options[2].innerHTML = "before3";
        position.options[3].innerHTML = "before4";
        position.parentNode.firstChild.innerHTML = "before1";
    } else if (depIndex == 1) {
        position.options[0].innerHTML = "after1";
        position.options[1].innerHTML = "after2";
        position.options[2].innerHTML = "after3";
        position.options[3].innerHTML = "after4";
        position.parentNode.firstChild.innerHTML = "after1";
    } else if (depIndex == 2) {
        position.options[0].innerHTML = "money1";
        position.options[1].innerHTML = "mon2";
        position.options[2].innerHTML = "mon3";
        position.options[3].innerHTML = "mon4";
        position.parentNode.firstChild.innerHTML = "mon1";
    } else {
        position.options[0].innerHTML = "sys1";
        position.options[1].innerHTML = "sys2";
        position.options[2].innerHTML = "sys3";
        position.options[3].innerHTML = "sys4";
        position.parentNode.firstChild.innerHTML = "sys1";
    }
}


//全选
function chooseAll() {
    var powers = document.getElementsByName("power");
    for (var i = 0; i < powers.length; i++) {
        powers[i].checked = true;
    }
}

function noAll() {
    var powers = document.getElementsByName("power");
    for (var i = 0; i < powers.length; i++) {
        powers[i].checked = false;
    }

}