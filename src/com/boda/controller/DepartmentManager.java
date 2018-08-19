package com.boda.controller;

import com.boda.pojo.Department;
import com.boda.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

        List<Department> departments = ds.getDeptInfo(deptSearchToken);
//        departments.remove(null);
        System.out.println(departments);
        if (!departments.isEmpty()) {
            model.addAttribute("deptinfo", departments);
        } else {
//            System.out.println("Else");
            model.addAttribute("MSG", "无符合结果");
        }
        return "deptInfo";
    }

    @RequestMapping("/UpdateDeptInfo.do")
    public String updateDeptInfo(String deptId, String deptName, String deptEmpNum, String deptBuildTime, Model model) throws Exception {

//        System.out.println(deptName + "  " + deptBuildTime);
        Department department = new Department();
        department.setDeptId(Integer.parseInt(deptId));
        department.setDeptName(deptName);
        department.setDeptEmpNum(Integer.parseInt(deptEmpNum));
        department.setDeptBuildTime(formatDate(deptBuildTime));

        if (ds.updateDeptInfo(department)) {
            model.addAttribute("MSG", "更新成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }
        return "deptInfo";
    }

    @RequestMapping("/AddDeptInfo.do")
    public String addDeptInfo(String deptName, String deptEmpNum, String deptBuildTime, Model model) throws Exception {

        Department department = new Department();
        department.setDeptName(deptName);
        department.setDeptEmpNum(Integer.parseInt(deptEmpNum));
        department.setDeptBuildTime(formatDate(deptBuildTime));

        if (ds.addDeptInfo(department)) {
            model.addAttribute("MSG", "新增成功");
        } else {
            model.addAttribute("MSG", "新增失败");
        }
        return "deptInfo";
    }

    @RequestMapping("/DelDeptInfo.do")
    public String delDeptInfo(int deptId, Model model) throws Exception {

        if (ds.delDeptInfo(deptId)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "deptInfo";
    }

    //用于转换日期格式
    private static Date formatDate(String dateStr) {

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
        try {
            date = dateFormat.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
