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
import java.util.Date;

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
            model.addAttribute("MSG", emp.getEmpAccount());
            model.addAttribute("detailInfo", empDetail);
            System.out.println(empDetail);
            return "个人中心";
        } else {
            model.addAttribute("MSG", "无可用信息");
            return "个人中心";
        }

    }

    @RequestMapping("/UpdateUserInfo.do")
    public String updateUserDetail(@RequestParam("name") String name, @RequestParam("sex") String sex, @RequestParam("weight") int weight, @RequestParam("height") int height, @RequestParam("education") String education, @RequestParam("phone") String phone, @RequestParam("birthday") String birthday, HttpServletRequest request, Model model) throws Exception {
        EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
//        System.out.println(empDetail);

        empDetail.setEmpName(name);
        empDetail.setEmpSex(sex);
        empDetail.setEmpWeight(weight);
        empDetail.setEmpHeight(height);
        empDetail.setEmpEducation(education);
        empDetail.setEmpPhone(phone);
        //修改生日

        String dateStr[] = birthday.split("-");
        int year = Integer.valueOf(dateStr[0]) - 1900;
        int month = Integer.valueOf(dateStr[1]) - 1;
        int day = Integer.valueOf(dateStr[2]);
        Date date = new Date(year, month, day);
        empDetail.setEmpBirthday(date);


        if (uds.updateUserDetail(empDetail)) {
//        uds.updateUserDetail(empDetail);
            model.addAttribute("MSG", empDetail.getEmpName());
            model.addAttribute("detailInfo", empDetail);
            return "个人中心";
        } else {
            model.addAttribute("MSG", "更新失败");
            return "个人中心";
        }
    }

    @RequestMapping("/UpdatePassword.do")
    public String updatePassword(@RequestParam("req") String req, @RequestParam("password1") String password1, HttpServletRequest request, Model model) throws Exception {
        Employee emp = (Employee) request.getSession().getAttribute("currentUser");
        if (emp.getEmpPassword().equals(req)) {
            emp.setEmpPassword(password1);
            model.addAttribute("MSG", "密码修改成功！请重新登录");
            return "userLogin";
        } else {
            model.addAttribute("PSW", "修改失败！输入密码错误！");
            EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
            model.addAttribute("detailInfo", empDetail);
            return "个人中心";
        }
    }
}