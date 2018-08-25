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
    <title>部门信息管理</title>
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
                <h6>部门管理</h6>
                <span>管理各个部门的基本资料</span>
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
    <div id="deptInfoTable" class="wrapper">
        <form action="DeptInfo.do" class="searchWidget">
            <input type="text" name="deptSearchToken" placeholder="搜索部门信息" id=""/>
            <input type="submit" value=""/>
        </form>

        <!-- 显示搜索结果提示信息 -->
        <div id="searchMsgText" class="red">${searchMSG}</div>
        <%--<div id="msgText" class="red">${MSG}</div>--%>

        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="./images/icons/dark/stats.png" alt="" class="titleIcon"><h6>查看部门</h6>
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
                        <td width="180">部门ID</td>
                        <td>部门名称</td>
                        <td>部门员工数</td>
                        <td>部门成立时间</td>
                        <td width="160">操作</td>
                    </tr>
                    </thead>
                    <tbody id="body">

                    <c:forEach items="${deptinfo}" var="deptinfo">
                        <tr>
                            <td id="id" align="center">${deptinfo.deptId}</td>
                            <td id="name" align="center">${deptinfo.deptName}</td>
                            <td id="empnum" align="center">${deptinfo.deptEmpNum}</td>
                            <td id="buildtime" align="center"><fmt:formatDate value="${deptinfo.deptBuildTime}"
                                                                              pattern="yyyy-MM-dd"/></td>
                            <td align="center">
                                <input type="button" value="修改" class="blueB"
                                       onclick="updateInfo(${deptinfo.deptId})"/>
                                <input type="button" value="删除" class="redB"
                                       onclick="delInfo(${deptinfo.deptId})">
                            </td>
                        </tr>
                    </c:forEach>

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
                    <h6 id="edit">新增部门信息</h6>
                </div>
                <form action="AddDeptInfo.do" class="form" method="post">
                    <fieldset>
                        <%--<div class="formRow">--%>
                        <%--<label>部门ID<span class="req">*</span> </label>--%>
                        <%--<div class="formRight">--%>
                        <%--<input type="text" id="updateId" name="deptId" value="${infotoupdate.deptId}"--%>
                        <%--readonly="readonly"/>--%>
                        <%--</div>--%>
                        <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                        <div class="formRow">
                            <label>部门名称<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addName" name="deptName"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>部门员工数<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addEmpNum" name="deptEmpNum"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>成立时间<span class="req">*</span> </label>
                            <div class="formRight">
                                <c:set var="now" value="<%=new java.util.Date()%>"/>
                                <input type="text" id="addBuildTime" name="deptBuildTime"
                                       value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>"/>
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
    });

    function delInfo(_id) {
        if (confirm("确认删除记录？")) {
            location.href = "DelDeptInfo.do?deptId=" + _id;
        }
    }

    function updateInfo(_id) {
//        alert("Id=" + _id);
        location.href = "QueryUpdateInfo.do?deptId=" + _id;
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
            location.href = "DeptInfo.do?deptSearchToken=";
        }
    }

    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }

</script>

</body>
</html>
