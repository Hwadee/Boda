<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>人员管理</title>
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

<body>
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
                <span>建立人员的基本资料</span>
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
        <form action="" class="searchWidget">
            <input type="text" name="search" placeholder="搜索..." id=""/>
            <input type="submit" value=""/>
        </form>
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
                        <td width="180">员工ID</td>
                        <td>姓名</td>
                        <td>所属部门</td>
                        <td>工作</td>
                        <td width="160">操作</td>
                    </tr>
                    </thead>
                    <tbody id="body">
                    <tr>
                        <td align="center">00001</td>
                        <td align="center">张三</td>
                        <td align="center">xx部门</td>
                        <td align="center">普通员工</td>
                        <td align="center">
                            <input type="button" value="删除" class="redB" onclick="del(this)"/>
                            <input type="button" value="修改" class="blueB" onclick="modify(this)"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">00007</td>
                        <td align="center">李四</td>
                        <td align="center">yy部门</td>
                        <td align="center">普通员工</td>
                        <td align="center">
                            <input type="button" value="删除" class="redB" onclick="del(this)"/>
                            <input type="button" value="修改" class="blueB"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">00007</td>
                        <td align="center">李四</td>
                        <td align="center">yy部门</td>
                        <td align="center">普通员工</td>
                        <td align="center">
                            <input type="button" value="删除" class="redB" onclick="del(this)"/>
                            <input type="button" value="修改" class="blueB"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">00007</td>
                        <td align="center">李四</td>
                        <td align="center">yy部门</td>
                        <td align="center">普通员工</td>
                        <td align="center">
                            <input type="button" value="删除" class="redB" onclick="del(this)"/>
                            <input type="button" value="修改" class="blueB"/>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!--预留空间-->
    <div class="line"></div>
    <div class="wrapper">
        <div class="widgets">
            <div class="widget">
                <div class="title">
                    <img src="./images/icons/dark/stats.png" alt class="titleIcon">
                    <h6 id="edit">人员信息编辑</h6>
                </div>
                <form id="validate" class="form" method="post" action>
                    <fieldset>
                        <div class="formRow">
                            <label>员工ID<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" class="validate[required]" name="password1" id="password1"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>姓名<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="name"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>所属部门<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="department"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>工作<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="job"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit">
                            <input type="submit" value="更新" class="greenB" onclick="update(this)"/>
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

</body>
</html>
