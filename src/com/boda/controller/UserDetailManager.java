package com.boda.controller;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;
import com.boda.service.UserDetailService;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserDetailManager {

    @Resource
    UserDetailService uds;

    @RequestMapping("/UserDetail.do")
    public String UserDetail(HttpServletRequest request, Model model) throws Exception {

        Employee emp = (Employee) request.getSession().getAttribute("currentUser");
        EmpDetail empDetail;

        //查询用户信息，"detailInfo"
        if ((empDetail = uds.userDetail(emp)) != null) {
            request.getSession().setAttribute("currentUserInfo", empDetail);
            model.addAttribute("MSG", empDetail.getEmpName());
            model.addAttribute("detailInfo", empDetail);
            return "detailPage";
        } else {
            model.addAttribute("MSG", "无可用信息");
            return "detailPage";
        }
    }

    @RequestMapping("/UpdateUserInfo.do")
    public String updateUserDetail(@RequestParam("name") String name, @RequestParam("phone") String phone, HttpServletRequest request, Model model) throws Exception {
        EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
//        System.out.println(empDetail);
        System.out.println(name + "  " + phone);

        empDetail.setEmpName(name);
        empDetail.setEmpPhone(phone);

        if (uds.updateUserDetail(empDetail)) {
//        uds.updateUserDetail(empDetail);
            model.addAttribute("MSG", empDetail.getEmpName());
            model.addAttribute("detailInfo", empDetail);
            return "detailPage";
        } else {
            model.addAttribute("MSG", "更新失败");
            return "detailPage";
        }
    }
}
