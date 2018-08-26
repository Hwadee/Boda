<%@ page import="com.boda.pojo.CustomerMessage" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>客户信息查询</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css"/>

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
        <div class="formRight">
            <form action="CusInfo.do" method="post" class="searchWidget">
                <div style="width: 95%;">
                    <div class="formRow">
                        <div class="oneThree"><input type="text" name="customerName" placeholder="客户名"/></div>
                        <div class="oneThree"><input type="text" name="customerPhone" placeholder="电话"/></div>
                        <div class="oneThree"><input type="text" name="customerIdentityId" placeholder="身份证"/></div>
                    </div>
                </div>
                <div style="width: 5%; float: left;"><input type="submit" name="querybtn" value=""/></div>

            </form>
        </div>

        <!-- Widgets -->
        <!--startprint1-->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="./images/icons/dark/stats.png" alt="" class="titleIcon"><h6>查看人员</h6>
                    <div class="topIcons">
                        <a href="#" class="tipS" title="新增记录" id="addinfobtn">
                            <img src="./images/icons/editTop.png" alt="">
                        </a>
                        <input type="image" src="./images/icons/downloadTop.png" class="tipS" title="打印该表格"
                               onclick="preview(1)"/>
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
                        <td>操作</td>
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
                            <td align="center">
                                <input type="button" value="修改" class="blueB"
                                       onclick="updateInfo(${cusInfo.customerId})"/>
                                <input type="button" value="删除" class="redB"
                                       onclick="delInfo(${cusInfo.customerId})">
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${cusPage.objList!=null}">
                        <tr>
                            <td colspan="6" align="center">
                                <button onclick="pageTurn(1)">首页</button> &nbsp;
                                <button onclick="pageTurn(2)">上一页</button>&nbsp;
                                &nbsp;第${cusPage.currentPage}页&nbsp;/&nbsp;共${cusPage.allPageNum}页&nbsp;
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
        <!--endprint1-->

    </div>
        <!--新增部门信息-->
        <div id="addInfo" class="wrapper" style="display: none">
            <div class="widgets">
                <div class="widget">
                    <div class="title">
                        <img src="./images/icons/dark/stats.png" alt="" class="titleIcon">
                        <h6 id="edit">新增客户信息</h6>
                    </div>
                    <form action="AddCusInfo.do" class="form" method="post">
                        <fieldset>
                            <div class="formRow">
                                <label>客户Id<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addId" name="customerId"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>客户名字<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addName" name="customerName"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>客户性别<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addSex" name="customerSex"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>身份证号<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addIdentityId" name="customerIdentityId"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>生日<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addBirthday" name="customerBirthday"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>邮箱<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addEmail" name="customerEmail"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>电话<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addPhone" name="customerPhone"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>地址<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addAddress" name="customerAddress"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>信誉度<span class="req">*</span> </label>
                                <div class="formRight">
                                    <input type="text" id="addCredit" name="customerCredit"/>
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

        <div>

            <div class="clear"></div>

        </div>
        <div class="clear"></div>
        <script type="text/javascript">
            function delInfo(_id) {
                if (confirm("确认删除记录？")) {
                    location.href = "DelCusInfo.do?customerId=" + _id;
                }
            }

            function updateInfo(_id) {
//       alert("Id=" + _id);
                location.href = "QueryUpdateInfo.do?customerId=" + _id;
            }

            $("#addinfobtn").click(function () {
                var infodiv = document.getElementById("addInfo");
                infodiv.style.display = "";
                $('html, body').animate({
                    scrollTop: $("#addInfo").offset().top
                }, 500);
            });

            var msg = "${MSG}";
            if (msg !== null && msg !== "") {
                alert(msg);
            }

        </script>
        </boby>
</html>
