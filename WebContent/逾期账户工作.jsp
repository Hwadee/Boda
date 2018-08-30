<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:34
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
    <title>逾期情况报表</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/table.js"></script>
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
                <h6>逾期账户工作</h6>
                <span>针对逾期账户进行催收工作，主要页面能显示客户基本信息、还款情况、逾期天数等</span>
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
        <div class="searchWidget">
            <form id="form1" action="overTimeAccountWork.do" method="post">
                <input type="hidden" id="currentPage" name="currentPage" value="${page.currentPage}">
                <input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize}">
                <input type="hidden" id="allPageNum" name="allPageNum" value="${page.allPageNum}">


                <input type="text" id="loanId" name="loanId" placeholder="贷款id" value="${loanId}" style="width: 29%"/>&nbsp;
                <input type="text" id="customerName" name="customerName" placeholder="姓名" value="${customerName}"
                       style="width: 29%"/>&nbsp;
                <input type="text" id="customerIdentityId" name="customerIdentityId" placeholder="身份证号"
                       value="${customerIdentityId}" style="width: 29%"/>&nbsp;
                <input type="button" onclick="pageTurning(0)"/>
                <!--<button type="button" onclick="pageTurning(0)">搜索</button>-->

            </form>
        </div>
        <!-- Widgets -->
        <div class="widgets">
            <div class="widget rightTabs">
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>逾期账户工作</h6></div>
                <fieldset>
                    <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                        <thead>
                        <tr>
                            <td>贷款id</td>
                            <td>姓名</td>
                            <td>性别</td>
                            <td>出生日期</td>
                            <td>电话</td>
                            <td>Email</td>
                            <td>信用</td>
                            <td>贷款金额</td>
                            <td>贷款日期</td>
                            <td>贷款状态</td>
                            <td>开始还款日期</td>
                            <td>贷款期限</td>
                            <td>分期数</td>
                            <td>贷款利率</td>
                            <td>还款信息</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.objList}" var="loan">
                            <tr>
                                <td align="center">${loan.loanId}</td>
                                <td align="center" class="webStatsLink"><a
                                        href="${pageContext.request.contextPath}/overTimeAccountDistribute.do?customerId=${loan.customerMessage.customerId}">
                                        ${loan.customerMessage.customerName}</a></td>
                                <td align="center">${loan.customerMessage.customerSex}</td>
                                <td align="center"><fmt:formatDate value="${loan.customerMessage.customerBirthday}"
                                                                   pattern="yyyy-MM-dd"/></td>
                                <td align="center">${loan.customerMessage.customerPhone}</td>
                                <td align="center">${loan.customerMessage.customerEmail}</td>
                                <td align="center">${loan.customerMessage.customerCredit}</td>
                                <td align="center">${loan.loanMoney}</td>
                                <td align="center"><fmt:formatDate value="${loan.loanDate}"
                                                                   pattern="yyyy-MM-dd"/></td>
                                <td align="center">${loan.loanState}</td>
                                <td align="center"><fmt:formatDate value="${loan.returnStartDate}"
                                                                   pattern="yyyy-MM-dd"/></td>
                                <td align="center">${loan.returnYears}</td>
                                <td align="center">${loan.numberOfStages}</td>
                                <td align="center">${loan.rateOfInterest}</td>
                                <td align="center"><a
                                        href="${pageContext.request.contextPath}/returnLoanMessage.do?loanId=${loan.loanId}">
                                    <input type="button" value="还款信息" class="greenB"></a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div align="center">
                        <a href="#" onclick="pageTurning(1)">首页</a>&nbsp;&nbsp;
                        <a href="#" onclick="pageTurning(2)">上一页</a>&nbsp;&nbsp;
                        <span id="pageInfo">第${page.currentPage}页/共${page.allPageNum}页</span>&nbsp;&nbsp;
                        <a href="#" onclick="pageTurning(3)">下一页</a>&nbsp;&nbsp;
                        <a href="#" onclick="pageTurning(4)">末页</a>&nbsp;&nbsp;
                    </div>
                </fieldset>
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
    //页面刷新的翻页
    function pageTurning(num) {
        var currentPage = parseInt("${page.currentPage}");
        var allPageNum = parseInt("${page.allPageNum}");
        switch (num) {
            case 0:
                currentPage = 1;
                break;
            case 1:
                if (currentPage == 1)
                    return;
                currentPage = 1;
                break;
            case 2:
                if (currentPage == 1)
                    return;
                currentPage--;
                break;
            case 3:
                if (currentPage == allPageNum)
                    return;
                currentPage++;
                break;
            case 4:
                if (currentPage == allPageNum)
                    return;
                currentPage = allPageNum;
                break;
        }
        document.getElementById("currentPage").value = currentPage;
        document.getElementById("form1").submit();
    }

</script>

</body>
</html>
