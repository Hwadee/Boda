package com.boda.controller;

import com.boda.pojo.Department;
import com.boda.service.DepartmentService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
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
        if (!departments.contains(null)) {
            model.addAttribute("deptinfo", departments);
        } else {
//            System.out.println("Else");
            model.addAttribute("MSG", "无符合结果");
        }
        return "deptInfo";
    }

    @RequestMapping("/UpdateDeptInfo.do")
    public String updateDeptInfo(String deptId, String deptName, String deptEmpNum, String deptBuildTime, Model model) throws Exception {

        System.out.println(deptName + "  " + deptBuildTime);
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
