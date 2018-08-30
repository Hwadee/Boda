<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>权限设置</title>
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
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>权限设置</h6>

                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable" id="listTable">
                    <tbody>
                    <form>
                        <tr>
                            <td align="center"><strong>部门</strong></td>
                            <td align="center">
                                <select id="department" onchange="findAllPost()">
                                    <option value="">---请选择部门---</option>
                                    <c:forEach items="${deptLists}" var="deptinfo">
                                        <option value="${deptinfo.deptId}">${deptinfo.deptName}</option>
                                    </c:forEach>
                                </select>
                                <input type="hidden" id="dep">
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><strong>职位</strong></td>
                            <td align="center">
                                <select id="position" name="positions">
                                    <option>---请选择部门---</option>
                                </select>
                                <input type="hidden" id="pos">
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><strong>权限</strong></td>
                            <td align="center">
                                <div class="formRow"><input type="checkbox" id="power1" name="power" value="1"><label
                                        for="power1">权限1：贷款前</label></div>
                                <div class="formRow"><input type="checkbox" id="power2" name="power" value="2"><label
                                        for="power2">权限2：贷款后</label></div>
                                <div class="formRow"><input type="checkbox" id="power3" name="power" value="3"><label
                                        for="power3">权限3：财务相关</label></div>
                                <div class="formRow"><input type="checkbox" id="power4" name="power" value="4"><label
                                        for="power4">权限4：系统设置</label></div>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <input type="button" class="blueB" value="确认修改" onclick="editPower()">
                            </td>
                        </tr>
                    </form>

                    <form action="EditPower.do" id="actualForm" style="display: none;">
                        <input id="postId" name="postId" type="hidden" value=""/>
                        <input id="powerarg" name="powerarg" type="hidden" value=""/>
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

<script type="text/javascript">

    function findAllPost() {
        var deptId = $("#department").find('option:selected').val();
        $("#position").empty();     //清空二级目录
        var classNext = $("#position");
        alert(deptId);
        $.ajax({
            type: "Post",
            url: "PostOfDept.do" + "?deptId=" + deptId,
            dataType: 'text',
            success: function (data) {
//                alert(data.toString());
                var obj = eval('(' + data + ')'); //接收json 数据并进行对象化
                if (obj.length != "" && obj.length != null) {
                    document.getElementById("position").parentNode.firstChild.innerHTML = obj[0].postName;
                    for (var i = 0; i < obj.length; i++) {
                        classNext.append("<option value=" + obj[i].postId + ">" + obj[i].postName + "</option>");
                    }
                } else {
                    classNext.append("<option value=" + 0 + ">---无---</option>");
                }
            },
            error: function (request) {
                alert("获取职位信息失败，请刷新页面后重试");
            }
        });
    }

    function editPower() {
        const postId = $("#position").find('option:selected').val();
//        alert(postId);
        $("#postId").val(postId);

        var test = $("input[name='power']:checked");
        var checkBoxValue = "";
        test.each(function () {
            checkBoxValue += $(this).val();
        });
//        alert(checkBoxValue);
        $("#powerarg").val(checkBoxValue);

        document.getElementById("actualForm").submit();
    }

</script>

<script type="text/javascript">
    var msg = ${MSG};
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>

</body>
</html>