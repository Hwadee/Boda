<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>人员信息管理</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="./js/table.js"></script>
    <script type="text/javascript" src="./js/jquery.min.js"></script>

    <script type="text/javascript" src="./js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="./js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="./js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="./js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="./js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="./js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="./js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="./js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="./js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="./js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="./js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="./js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="./js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="./js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="./js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="./js/custom.js"></script>

    <script type="text/javascript" src="./js/charts/chart.js"></script>

    <script type="text/javascript" src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->

</head>

<body onload="init()">

<!-- Left side content -->
<jsp:include page="left.jsp"></jsp:include>
<!-- Right side -->
<div id="rightSide">
    <jsp:include page="top.jsp"></jsp:include>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>系统设置</h5><br>
                <h6>人员管理</h6>
                <span>管理员工的基本资料</span>
            </div>
            <div class="middleNav">

                <img src="./images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="line"></div>
    <!-- Main 表格 -->
    <div id="empInfoTable" class="wrapper">
        <form id="form1" action="EmpInfo.do" class="searchWidget">
            <div style="width: 95%;">
                <div class="formRow">
                    <div class="oneThree"><input type="text" name="empId" placeholder="员工号"/></div>
                    <div class="oneThree"><input type="text" name="empName" placeholder="员工姓名"/></div>
                    <div class="oneThree"><input type="text" name="empDept" placeholder="所在部门"/></div>
                </div>
            </div>

            <input type="hidden" id="currentPage" name="currentPage" value="${empPage.currentPage}">
            <input type="hidden" id="pageSize" name="pageSize" value="${empPage.pageSize}">
            <input type="hidden" id="allPageNum" name="allPageNum" value="${empPage.allPageNum}">
            <div style="width: 5%; float: left;"><input type="submit" name="querybtn" value=""/></div>
        </form>

        <!-- 显示搜索结果提示信息 -->
        <div id="searchMsgText" class="red">${searchMSG}</div>

        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="./images/icons/dark/stats.png" alt="" class="titleIcon"><h6>查看员工信息</h6>
                    <%--<input type="button" id="addinfobtn" value="新增部门信息" class="greenB">--%>
                    <div class="topIcons">
                        <a href="#" class="tipS" title="新增记录" id="addinfobtn">
                            <img src="./images/icons/editTop.png" alt="">
                        </a>
                        <a href="#" class="tipS" title="打印该表格">
                            <img src="./images/icons/downloadTop.png" alt="">
                        </a>
                    </div>
                </div>

                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <thead>
                    <tr>
                        <td width="180">员工ID</td>
                        <td>员工姓名</td>
                        <td>所属部门</td>
                        <td>职位</td>
                        <td width="160">操作</td>
                    </tr>
                    </thead>
                    <tbody id="body">

                    <c:forEach items="${empPage.objList}" var="empinfo">
                        <tr>
                            <td id="id" align="center">${empinfo.empId}</td>
                            <td id="name" align="center">${empinfo.empDetail.empName}</td>
                            <td id="empdept" align="center">${empinfo.department.deptName}</td>
                            <td id="emppos" align="center">${empinfo.post.postName}</td>
                            <td align="center">
                                <input type="button" value="删除" class="redB"
                                       onclick="delInfo(${empinfo.empId})">
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empPage.objList!=null}">
                        <tr>
                            <td colspan="6" align="center">
                                <button onclick="pageTurn(1)">首页</button> &nbsp;
                                <button onclick="pageTurn(2)">上一页</button>&nbsp;
                                &nbsp;第${empPage.currentPage}页&nbsp;/&nbsp;共${empPage.allPageNum}页&nbsp;
                                <button onclick="pageTurn(3)">下一页</button>&nbsp;
                                <button onclick="pageTurn(4)">末页</button>&nbsp;

                            </td>
                        </tr>
                    </c:if>

                    </tbody>
                </table>

                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!--新增部门信息-->
    <div id="addInfo" class="wrapper" style="display: none">
        <div class="widgets">
            <div class="widget">
                <div class="title">
                    <img src="./images/icons/dark/stats.png" alt="" class="titleIcon">
                    <h6 id="edit">新增员工信息</h6>
                </div>
                <form action="AddEmpInfo.do" class="form" method="post">
                    <fieldset>
                        <div class="formRow">
                            <label>员工姓名<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addName" name="empName"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>所属部门<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addDept" name="deptName"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>职位<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addEmpPos" name="postName"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formSubmit">
                            <input type="submit" value="确定" class="greenB"/>
                            <input type="button" value="取消" class="redB" onclick="history.back()"/>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>

<script type="text/javascript">
    /*
        $(function () {
            $("#addBuildTime").datepicker({
                //限制日期范围
    //            minDate: -20,
    //            maxDate: "+1M +10D",

                //月份、年份下拉框
                changeMonth: true,
                changeYear: true,

                //日期格式
                dateFormat: "yy-mm-dd"
            });
        });*/

    function delInfo(_id) {
        if (confirm("确认删除员工信息？")) {
            location.href = "DelEmpInfo.do?empId=" + _id;
        }
    }

    $("#addinfobtn").click(function () {
        var infodiv = document.getElementById("addInfo");
        infodiv.style.display = "";
        $('html, body').animate({
            scrollTop: $("#addInfo").offset().top
        }, 500);
    });

    function init() {
        var msg = document.getElementById("searchMsgText").innerHTML;
//        console.log(msg);
        if ((msg === "" || msg === null) && !document.getElementById("id")) {
            location.href = "EmpInfo.do?";
        }
    }

    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }

    //定义查询按钮事件
    $("#querybtn").click(function () {
        pageTurn(0);
    });
    //当条件输入框发生改变时翻页信息从新初始化
    $("input:text").change(function () {

        $('#currentPage').val("0");
        $('#pageSize').val("0");
        $('#allPageNum').val("0");
    });

    function pageTurn(num) {
        var currentPage = $('#currentPage').val();
        var pageSize = $('#pageSize').val();
        var allPageNum = $('#allPageNum').val();
        switch (num) {
            case 0:
                $('#currentPage').val("0");
                $('#pageSize').val("0");
                $('#allPageNum').val("0");
                break;
            case 1:
                if (currentPage > 1) $('#currentPage').val("1");
                else return;
                break;
            case 2:
                if (currentPage > 1) {
                    --currentPage;
                    $('#currentPage').val(currentPage);
                }
                else return;
                break;
            case 3:
                if (allPageNum > currentPage) {
                    ++currentPage;
                    $('#currentPage').val(currentPage);
                }
                else return;
//                alert($('#currentPage').val());
                break;
            case 4:
                if (allPageNum > currentPage) $('#currentPage').val(allPageNum);
                else return;
                break;
        }
        document.getElementById("form1").submit();
    }

</script>

</body>
</html>
