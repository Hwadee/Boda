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
    <title>部门信息更新</title>
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

    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

    <%--<script type="text/javascript" src="js/mootools.js"></script>--%>
    <%--<script type="text/javascript" src="js/calendar.rc4.js"></script>--%>
    <%--<script type="text/javascript">--%>
    <%--//<![CDATA[--%>
    <%--window.addEvent('domready', function() {--%>
    <%--myCal = new Calendar({ updateBuildTime: 'Y/m/d' }, { direction: 1, tweak: {x: 6, y: 0} });--%>
    <%--});--%>
    <%--//]]>--%>
    <%--</script>--%>
    <%--<link rel="stylesheet" type="text/css" href="css/iframe.css" media="screen" />--%>
    <%--<link rel="stylesheet" type="text/css" href="css/calendar.css" media="screen" />--%>
    <%--<link rel="stylesheet" type="text/css" href="css/dashboard.css" media="screen" />--%>
    <%--<link rel="stylesheet" type="text/css" href="css/i-heart-ny.css" media="screen" />--%>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
</head>
<body>

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
                <span>建立各个部门的基本资料，可定义多层的部门设置</span>
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

        <div id="msgText" class="red">${MSG}</div>
    </div>

    <!--更新部门信息-->
    <div class="line"></div>
    <div id="updateInfo" class="wrapper">
        <div class="widgets">
            <div class="widget">
                <div class="title">
                    <img src="./images/icons/dark/stats.png" class="titleIcon">
                    <h6 id="edit">部门信息编辑</h6>
                </div>
                <form action="UpdateDeptInfo.do" class="form" method="post">
                    <fieldset>
                        <div class="formRow">
                            <label>部门ID<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateId" name="deptId" value="${infotoupdate.deptId}"
                                       readonly="readonly"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>部门名称<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateName" name="deptName" value="${infotoupdate.deptName}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>部门员工数<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateEmpNum" name="deptEmpNum"
                                       value="${infotoupdate.deptEmpNum}"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>成立时间<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateBuildTime" name="deptBuildTime"
                                       value=
                                       <fmt:formatDate pattern="yyyy-MM-dd" value="${infotoupdate.deptBuildTime}"/>
                                />
                            </div>

                            <!--
                                <div class="formRow dnone">
                                    <label>生日：</label>
                                    <div class="formRight">
                                        <select name="YYYY" onchange="YYYYDD(this.value)">
                                            <option value="">请选择 年</option>
                                        </select>
                                        <select name="MM" onchange="MMDD(this.value)">
                                            <option value="">请选择 月</option>
                                        </select>
                                        <select name="DD">
                                            <option value="">请选择 日</option>
                                        </select>
                                    </div>
                                    <script language="JavaScript">
                                        if (document.attachEvent)
                                            window.attachEvent("onload", YYYYMMDDstart);
                                        else if (window.addEventListener)
                                            window.addEventListener("load", YYYYMMDDstart, false);
                                    </script>
                                    -->
                            <div class="clear"></div>
                        </div>


                        <div class="formSubmit">
                            <input type="submit" value="更新" class="greenB"/>
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
        $("#updateBuildTime").datepicker({
            //限制日期范围
//            minDate: -20,
//            maxDate: "+1M +10D",

            //月份、年份下拉框
            changeMonth: true,
            changeYear: true,

            //日期格式
            dateFormat: "yymmdd"
        });
    });

</script>

<%--<script type="text/javascript">--%>
<%--var msg = "${MSG}";--%>
<%--if (msg !== null &amp;&amp; msg !== "") {--%>
<%--alert(msg);--%>
<%--}--%>
<%--</script>--%>

</body>
</html>
