<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>逾期账户分配条件</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>

    <script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="js/custom.js"></script>

    <script type="text/javascript" src="js/charts/chart.js"></script>

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
                <h5>贷后账户管理</h5><br>
                <h6>逾期账户分配条件</h6>
                <span>根据账户情况设置分配条件</span>
            </div>
            <div class="middleNav">

                <img src="images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="line"></div>
    <!-- Main 表格 -->
    <div class="wrapper">
        <form id="form1" action="overTimeAccountDistribute.do" method="POST" class="searchWidget">
            <input type="hidden" id="customerId" name="customerId"/>
            <%-- <input type="text" name="search" placeholder="搜索用户名..." id="" />
             <input type="submit" value="" />--%>
        </form>
        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>逾期账户分配条件</h6>
                    <div class="topIcons">
                        <a href="#" class="tipS" title="打印该表格">
                            <img src="images/icons/downloadTop.png" alt>
                        </a>
                    </div>
                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <tr>
                        <td align="center"><strong>客户id</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerId}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>姓名</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerName}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>性别</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerSex}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>身份证号</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerIdentityId}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>出生日期</strong></td>
                        <td><fmt:formatDate value="${overTimeDistribute.customerMessage.customerBirthday}"
                                            pattern="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <td align="center"><strong>电话</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerPhone}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>Email</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerEmail}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>家庭住址</strong></td>
                        <td>${overTimeDistribute.customerMessage.customerAddress}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>信用</strong></td>
                        <td>
                            <form id="form2" action="savaDistributeMessage.do" method="POST">
                                <input type="hidden" id="customerId" name="customerId"
                                       value="${overTimeDistribute.customerMessage.customerId}"/>
                                <div class="form">
                                    <input type="text" id="customerCredit" name="customerCredit"
                                           value="${overTimeDistribute.customerMessage.customerCredit}"
                                           style="width: 50%"/>
                                </div>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><strong>贷款次数</strong></td>
                        <td>${overTimeDistribute.loanNum}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>贷款总金额</strong></td>
                        <td>${overTimeDistribute.loanMoney}</td>
                    </tr>
                    <tr>
                        <td align="center"><strong>逾期次数</strong></td>
                        <td>${overTimeDistribute.overTimeNum}</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <button type="button" onclick="saveEdit()" class="redB">保存</button>
                        </td>
                    </tr>
                </table>

            </div>

        </div>
        <div class="clear"></div>


    </div>
    <div class="clear"></div>
</div>
</div>

<!-- Footer line -->
<jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>

<script type="text/javascript">
    function saveEdit() {
        document.getElementById("form2").submit();
    }
</script>
<script type="text/javascript">
    var msg = "${MSG}";
    if (msg != null && msg != "") {
        if (msg == "OK") alert("保存成功");
        else alert("保存失败");
    }
</script>

</body>
</html>