package com.boda.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
            return "success";
        } else {
            model.addAttribute("MSG", "账号或密码错误！");
            return "userLogin";
        }
    }
}
