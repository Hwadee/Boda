<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:37
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
    <script type="text/javascript" src="js/print.js"></script>
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
                <h6>逾期情况报表</h6>
                <span>表现各组织催收情况、逾期还款情况</span>
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
        <form id="form1" action="overTimeMessageTable.do" method="post" class="searchWidget">
            <input type="hidden" id="currentPage" name="currentPage" value="${returnLoanPage.currentPage}">
            <input type="hidden" id="pageSize" name="pageSize" value="${returnLoanPage.pageSize}">
            <input type="hidden" id="allPageNum" name="allPageNum" value="${returnLoanPage.allPageNum}">
            <%--<input type="text" name="search" placeholder="搜索用户名..." id="" />
            <input type="submit" value="" />--%>
        </form>
        <!-- Widgets -->
        <!--startprint1-->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>逾期情况报表</h6>
                    <div class="topIcons">
                        <a href="#" class="tipS" title="打印该表格" onclick="preview(1)">
                            <img src="images/icons/downloadTop.png" alt="">
                        </a>
                    </div>
                </div>

                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <thead>
                    <tr>
                        <td>还款id</td>
                        <td>贷款id</td>
                        <td>催促员工id</td>
                        <td>还款金额</td>
                        <td>应还金额</td>
                        <td>还款日期</td>
                        <td>应还日期</td>
                        <td>分期数</td>
                        <td>还款状态</td>
                        <td>最近催促日期</td>
                        <td>催促状态</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${returnLoanPage.objList}" var="returnLoans">
                        <tr>
                            <td align="center">${returnLoans.returnId}</td>
                            <td align="center">${returnLoans.loanId}</td>
                            <td align="center">${returnLoans.urgeForReturn.empId}</td>
                            <td align="center">${returnLoans.returnMoney}</td>
                            <td align="center">${returnLoans.shouldReturnMoney}</td>
                            <td align="center"><fmt:formatDate value="${returnLoans.returnDate}"
                                                               pattern="yyyy-MM-dd"/></td>
                            <td align="center"><fmt:formatDate value="${returnLoans.shouldReturnDate}"
                                                               pattern="yyyy-MM-dd"/></td>
                            <td align="center">${returnLoans.whichStage}</td>
                            <td align="center">${returnLoans.returnState}</td>
                            <td align="center"><fmt:formatDate value="${returnLoans.urgeForReturn.lastUrgeDate}"
                                                               pattern="yyyy-MM-dd"/></td>
                            <td align="center">${returnLoans.urgeForReturn.urgeState}</td>
                        </tr>
                    </c:forEach>

                    <c:if test="${returnLoanPage.objList!=null}">
                        <tr>
                            <td colspan="11" align="center">
                                <a onclick="pageTurning(1)">首页</a>
                                <a onclick="pageTurning(2)">上一页</a>
                                <span id="pageInfo">第${returnLoanPage.currentPage}页/共${returnLoanPage.allPageNum}页</span>
                                <a onclick="pageTurning(3)">下一页</a>
                                <a onclick="pageTurning(4)">末页</a>
                            </td>
                        </tr>
                    </c:if>

                    </tbody>
                </table>

            </div>
        </div>
        <!--endprint1-->
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
    <%--function pageTurning(num) {--%>
    <%--var currentPage = parseInt("${returnLoanPage.currentPage}");--%>
    <%--var allPageNum = parseInt("${returnLoanPage.allPageNum}");--%>
    <%--switch (num) {--%>
    <%--case 0:--%>
    <%--currentPage = 1;--%>
    <%--break;--%>
    <%--case 1:--%>
    <%--if (currentPage == 1)--%>
    <%--return;--%>
    <%--currentPage = 1;--%>
    <%--break;--%>
    <%--case 2:--%>
    <%--if (currentPage == 1)--%>
    <%--return;--%>
    <%--currentPage--;--%>
    <%--break;--%>
    <%--case 3:--%>
    <%--if (currentPage == allPageNum)--%>
    <%--return;--%>
    <%--currentPage++;--%>
    <%--break;--%>
    <%--case 4:--%>
    <%--if (currentPage == allPageNum)--%>
    <%--return;--%>
    <%--currentPage = allPageNum;--%>
    <%--break;--%>
    <%--}--%>
    <%--document.getElementById("currentPage").value = currentPage;--%>
    <%--document.getElementById("form1").submit();--%>
    <%--}--%>
    function pageTurning(num) {
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
//               alert($('#currentPage').val());
                break;
            case 4:
                if (allPageNum > currentPage) $('#currentPage').val(allPageNum);
                else return;
                break;
        }
        document.getElementById("currentPage").value = currentPage;
        document.getElementById("form1").submit();
    }
</script>

</body>
</html>