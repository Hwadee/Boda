<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>客户贷款审批</title>
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

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>


<body onload="red()">

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
                <h6>客户贷款审批</h6>
                <span>针对贷款账户资料进行审批流程。</span>
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
        <form action="QueryLoanInfo.do" id="form1" class="searchWidget">
            <input type="hidden" id="currentPage" name="currentPage" value="${loanPage.currentPage}">
            <input type="hidden" id="pageSize" name="pageSize" value="${loanPage.pageSize}">
            <input type="hidden" id="allPageNum" name="allPageNum" value="${loanPage.allPageNum}">
            <%--<input type="submit" name="querybtn" value=""/>--%>
        </form>
        <!-- 显示搜索结果提示信息 -->
        <div id="searchMsgText" class="red">${searchMSG}</div>
        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="./images/icons/dark/stats.png" alt="" class="titleIcon"><h6>查看人员</h6>
                    <div class="topIcons">
                        <a href="#" class="tipS" title="打印该表格">
                            <img src="./images/icons/downloadTop.png" alt>
                        </a>
                    </div>
                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <thead>
                    <tr>
                        <td>loanId</td>
                        <td>客户ID</td>
                        <td>贷款金额</td>
                        <td>当前贷款情况</td>
                        <td>贷款年限</td>
                        <td>分期次数</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tbody id="body">
                    <c:forEach items="${loanPage.objList}" var="loan">
                        <tr>
                            <td id="loanId" align="center">${loan.loanId}</td>
                            <td id="customerId" align="center">${loan.customerId}</td>
                            <td id="loanMoney" align="center">${loan.loanMoney}</td>
                            <td id="loanState" align="center">${loan.loanState}</td>
                            <td id="returnYears" align="center">${loan.returnYears}</td>
                            <td id="numOfStages" align="center">${loan.numberOfStages}</td>
                            <td align="center">
                                <input type="button" value="同意" class="blueB"
                                       onclick="agreeInfo(${loan.loanId})"/>
                                <input type="button" value="拒绝" class="redB"
                                       onclick="delInfo(${loan.loanId})"/>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${loanPage.objList!=null}">
                        <tr>
                            <td colspan="6" align="center">
                                <button onclick="pageTurn(1)">首页</button> &nbsp;
                                <button onclick="pageTurn(2)">上一页</button>&nbsp;
                                &nbsp;第${loanPage.currentPage}页&nbsp;/&nbsp;共${loanPage.allPageNum}页&nbsp;
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
    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>
<script type="text/javascript">
    function delInfo(_id) {
        if (confirm("确认拒绝？")) {
            location.href = "UpdateLoanInfoDel.do?loanId=" + _id;
        }
    }
    function agreeInfo(_id) {
        location.href = "UpdateLoanInfoAgree.do?loanId=" + _id;
    }
    $("#addinfobtn").click(function () {
        var infodiv = document.getElementById("addInfo");
        infodiv.style.display = "";
        $('html, body').animate({
            scrollTop: $("#addInfo").offset().top
        }, 500);
    });

    var msg = "${searchMSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }

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
                if (currentPage >= 1) $('#currentPage').val("1");
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