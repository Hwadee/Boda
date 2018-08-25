package com.boda.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boda.pojo.Employee;
import com.boda.service.UserManagerService;

@Controller
public class UserManager {

    @Resource
    UserManagerService ums;

    @RequestMapping("/IntoLogin.do")
    public String IntoLoginController() {
        return "userLogin";
    }

    @RequestMapping("/UserLogin.do")
    public String UserLoginController(String account, String password, HttpServletRequest request, Model model) throws IOException {

        Employee employee = null;

        if ((employee = ums.userLogin(account, password)) != null) {
            model.addAttribute("MSG", account);
            request.getSession().setAttribute("currentUser", employee);
            return "index2";
        } else {
            model.addAttribute("MSG", "账号或密码错误！");
            return "userLogin";
        }
    }

    @RequestMapping("/EmpInfo.do")
    public String empInfo(String empId, String empName, String empDept, Page<Employee> page, Model model) throws Exception {

        final int PAGE_SIZE = 10;
        System.out.println(page.getCurrentPage());
        if (page.getCurrentPage() == null || page.getCurrentPage() == 0) {
            page.setCurrentPage(1);
            page.setPageSize(PAGE_SIZE);
        }

        page = ums.getEmpInfo(empId, empName, empDept, page);

        if (page.getObjList().isEmpty()) {
            model.addAttribute("searchMSG", "无符合结果");
        } else {
            model.addAttribute("empPage", page);
        }
        return "人员管理";
    }

    @RequestMapping("/DelEmpInfo.do")
    public String delEmpInfo(String empId, Model model) throws Exception {

        if (ums.delEmpInfo(empId)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "人员管理";
    }

    @RequestMapping("/AddEmpInfo.do")
    public String addEmpInfo(String empName, String deptName, String postName, Model model) throws Exception {

        System.out.println(empName + " " + deptName + " " + postName);
        String account = ums.addEmpInfo(empName, deptName, postName);
        if (account != null) {
            model.addAttribute("MSG", "新增员工信息成功，该员工账号为" + account);
        } else {
            model.addAttribute("MSG", "新增员工信息失败");
        }
        return "人员管理";
    }
}
