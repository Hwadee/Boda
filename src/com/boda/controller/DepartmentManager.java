package com.boda.controller;

import com.boda.pojo.Department;
import com.boda.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
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
        List<Department> departments = null;
        if ((departments = ds.getDeptInfo(deptSearchToken)) != null) {
            model.addAttribute("deptinfo", departments);
        } else {
            model.addAttribute("MSG", "无符合结果");
        }
        return "deptInfo";
    }
}
