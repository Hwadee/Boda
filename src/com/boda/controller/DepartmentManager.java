package com.boda.controller;

import com.boda.pojo.Department;
import com.boda.service.DepartmentService;
import com.boda.util.Tool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.lang.reflect.Method;
import java.util.List;

@Controller
public class DepartmentManager {

    @Resource
    DepartmentService ds;

    @RequestMapping("/IntoDeptInfo.do")
    public String intoDeptInfo() {
        return "deptInfo";
    }

    @RequestMapping("/DeptInfo.do")
    public String deptInfo(String deptSearchToken, Model model) throws Exception {

        System.out.println("SearchToken = " + deptSearchToken);
        List<Department> departments = ds.getDeptInfo(deptSearchToken);
//        System.out.println(departments);
        if (!departments.isEmpty()) {
            model.addAttribute("deptinfo", departments);
//            model.addAttribute("infotoupdate");
        } else {
            model.addAttribute("searchMSG", "无符合结果");
        }
        return "部门管理";
    }

    @RequestMapping("/QueryUpdateInfo.do")
    public String queryUpdateInfo(String deptId, Model model) throws Exception {

        Department department = ds.getDeptInfo(deptId).get(0);
        model.addAttribute("infotoupdate", department);

        return "UpdateDeptInfo";
    }

    @RequestMapping("/UpdateDeptInfo.do")
    public String updateDeptInfo(String deptId, String deptName, String deptEmpNum, String deptBuildTime, Model model) throws Exception {

        Department department = new Department();
        department.setDeptId(Tool.isInteger(deptId) ? Integer.parseInt(deptId) : 0);
        department.setDeptName(deptName);
        department.setDeptEmpNum(Tool.isInteger(deptEmpNum) ? Integer.parseInt(deptEmpNum) : 0);
        department.setDeptBuildTime(Tool.formatStringToDate(deptBuildTime));

        if (ds.updateDeptInfo(department)) {
            model.addAttribute("MSG", "更新成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }
        return "部门管理";
    }

    @RequestMapping("/AddDeptInfo.do")
    public String addDeptInfo(String deptName, String deptEmpNum, String deptBuildTime, Model model) throws Exception {

        //暂时性，应在前端判断输入
        if ("".equals(deptName)) {
            model.addAttribute("MSG", "新增失败，缺少部门名称");
            return "部门管理";
        }

        Department department = new Department();
        department.setDeptName(deptName);
        department.setDeptEmpNum(Tool.isInteger(deptEmpNum) ? Integer.parseInt(deptEmpNum) : 0);
        department.setDeptBuildTime(Tool.formatStringToDate(deptBuildTime));

        if (ds.addDeptInfo(department)) {
            model.addAttribute("MSG", "新增成功");
        } else {
            model.addAttribute("MSG", "新增失败");
        }
        return "部门管理";
    }

    @RequestMapping("/DelDeptInfo.do")
    public String delDeptInfo(String deptId, Model model) throws Exception {

        if (ds.delDeptInfo(Tool.isInteger(deptId) ? Integer.parseInt(deptId) : 0)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "部门管理";
    }

}
