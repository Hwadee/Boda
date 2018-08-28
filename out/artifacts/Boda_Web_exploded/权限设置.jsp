<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>权限设置</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/table.js"></script>
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
    <script type="text/javascript" src="js/power.js"></script>


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
                <h6>权限设置</h6>
                <span>根据使用人员的岗位分配不同的系统操作权限</span>
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
        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon" ><h6>权限设置</h6>

                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <tbody>
                    <form>
                        <tr>
                            <td align="center"><strong>部门</strong></td>
                            <td align="center">
                                <select id="department" onchange="changePosition()">
                                    <option>贷前部</option>
                                    <option>贷后部</option>
                                    <option>财务部</option>
                                    <option>管理部</option>
                                </select>
                                <input type="hidden" id="dep">
                            </td>
                        </tr>
                    <tr>
                        <td align="center"><strong>职位</strong></td>
                        <td align="center">
                            <select id="position" name="positions">
                                <option>带钱职位1</option>
                                <option>带钱职位2</option>
                                <option>带钱职位3</option>
                                <option>带钱职位4</option>
                            </select>
                            <input type="hidden" id="pos">
                        </td>
                    <tr>
                        <td align="center" ><strong>权限</strong></td>
                        <td align="center">
                            <div class="formRow"><input type="checkbox" id="power1" name="power"><label for="power1">权限1：贷款前</label><input type="hidden" id="c1"></div>
                            <div class="formRow"><input type="checkbox" id="power2" name="power"><label for="power2">权限2：贷款后</label><input type="hidden" id="c2"></div>
                            <div class="formRow"><input type="checkbox" id="power3" name="power"><label for="power3">权限3：财务相关</label><input type="hidden" id="c3"></div>
                            <div class="formRow"><input type="checkbox" id="power4" name="power"><label for="power4">权限4：系统设置</label><input type="hidden" id="c4"></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2">
                            <input type="button" class="blueB" value="确认修改" onclick="getPosition()">
                        </td>
                    </tr>
                    </form>
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

</body>
</html>