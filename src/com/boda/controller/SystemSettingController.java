package com.boda.controller;

import com.boda.pojo.OperationLog;
import com.boda.pojo.Post;
import com.boda.service.DepartmentService;
import com.boda.service.SystemSettingService;
import com.boda.util.Tool;
import com.boda.vo.Page;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

@Controller
public class SystemSettingController {
    @Resource
    private SystemSettingService systemSettingService;
    @Resource
    private DepartmentService departmentService;

    @RequestMapping("/IntoOperationLogs.do")
    public String intoOperationLogs() {
        return "操作记录查询";
    }

    @RequestMapping("/OperationLogs.do")
    public String operationLogs(String startDate, String endDate, String empId, String currentPage, String pageSize, Model model) {

        final int defaultPageSize = 10;
        try {
//            DateConveter dateConveter = new DateConveter();
            Date startDate_ = Tool.formatStringToDate(startDate);
            Date endDate_ = Tool.formatStringToDate(endDate);
            Integer empId_ = (empId == null || "".equals(empId)) ? null : Integer.parseInt(empId);
            Integer currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            Integer pageSize_ = (pageSize == null || "".equals(pageSize)) ? defaultPageSize : Integer.parseInt(pageSize);
            Page<OperationLog> operationLogPage = systemSettingService.getOperationLogs(currentPage_, pageSize_, startDate_, endDate_, empId_);
            model.addAttribute("operationLogPage", operationLogPage);
        } catch (Exception e) {
            System.out.println("操作记录查询异常");
        }
        return "操作记录查询";
    }

    //进入权限设置页面时初始化，获得所有部门信息
    @RequestMapping("/IntoPowerSetting.do")
    public String intoPowerSetting(Model model) throws Exception {

        model.addAttribute("deptLists", departmentService.getDeptInfo(""));
        return "权限设置";
    }

    @RequestMapping(value = "/PostOfDept.do", method = RequestMethod.POST)
    public void getPost(String deptId, HttpServletResponse response) {

        try {
            System.out.println(deptId);
            List<Post> posts = systemSettingService.getPost(deptId);
            System.out.println(posts);
            Gson gson = new GsonBuilder().create();

            String jsonList = gson.toJson(posts);
            System.out.println(jsonList);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(jsonList);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
