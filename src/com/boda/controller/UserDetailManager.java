package com.boda.controller;

import com.boda.pojo.EmpDetail;
import com.boda.service.UserDetailService;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.IOException;

@Controller
public class UserDetailManager {

    @Resource
    UserDetailService uds;

    @RequestMapping("/UserDetail.do")
    public String UserDetailController(String id, Model model) throws IOException {
        EmpDetail empDetail;
        id = "7";
        if ((empDetail = uds.userDetail(id)) != null) {
            model.addAttribute("MSG", empDetail.getEmpName());
            return "detailPage";
        } else {
            model.addAttribute("MSG", "无可用信息");
            return "userDetail";
        }
    }
}
