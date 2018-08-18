<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>客户信息查询</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="./js/table.js"></script>
    <script type="text/javascript" src="./js/print.js"></script>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/search.js"></script>
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
    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>
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
                <h5>贷前账户管理</h5><br>
                <h6>客户信息查询</h6>
                <span>查询各贷款账户状态、查询数量、查询客户信息、模糊查询等</span>
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

    <div class="wrapper">
        <div class="searchWidget">
            <form action="客户信息查询.do" method="post" id="form1">
                <input type="hidden" id="currentPage" name="currentPage" value="${page.currentPage}"/>
                <input type="text" name="search" placeholder="搜索..." id="lookfor" />
                <input type="button" id="test" />
            </form>
        </div>
        <!-- Widgets -->
        <!--startprint1-->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="./images/icons/dark/stats.png" alt="" class="titleIcon" ><h6>查看人员</h6>
                    <div class="topIcons">
                        <input type="image" src="./images/icons/downloadTop.png" class="tipS" title="打印该表格" onclick="preview(1)"/>
                    </div>
                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <thead>
                    <tr>
                        <td>客户ID</td>
                        <td>姓名</td>
                        <td>性别</td>
                        <td>身份证号</td>
                        <td>生日</td>
                        <td>邮箱</td>
                        <td>电话</td>
                        <td>地址</td>
                        <td>信用</td>
                        <td>当前状态</td>
                    </tr>
                    </thead>
                    <tbody id="body">
                    <c:forEach items="${page.page_List}" var="customer">
                        <tr>
                            <td align="center">${customer.customer_ID}</td>
                            <td align="center">${customer.customer_name}</td>
                            <td align="center">${customer.customer_sex}</td>
                            <td align="center">${customer.customer_identify_id}</td>
                            <td align="center">${customer.customer_birthday}</td>
                            <td align="center">${customer.customer_email}</td>
                            <td align="center">${customer.customer_phone}</td>
                            <td align="center">${customer.customer_address}</td>
                            <td align="center">${customer.customer_credit}</td>
                            <td align="center">${customer.loan_state}</td>
                        </tr>
                    </c:forEach>
                    <tr>

                    </tr>
                    <tr>
                        <td colspan="10" align="center">
                            <a href="#">首页</a>&nbsp;&nbsp;
                            <a href="#">上一页</a>&nbsp;&nbsp;
                            <a href="#">下一页</a>&nbsp;&nbsp;
                            <a href="#">尾页</a>&nbsp;&nbsp;
                            <a>转到</a><input type="text" size="1" maxlength="4"/><a>页</a>&nbsp;<a href="#">跳转</a>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <!--endprint1-->
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>

</body>
</html>
