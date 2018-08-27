package com.boda.controller;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;
import com.boda.service.UserDetailService;

import com.boda.util.Tool;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

@Controller
public class UserDetailManager {

    @Resource
    UserDetailService uds;

    @RequestMapping("/UserDetail.do")
    public String UserDetail(HttpServletRequest request, Model model) throws Exception {

        Employee emp = (Employee) request.getSession().getAttribute("employee");
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
    public String updateUserDetail(@RequestParam("name") String name,
                                   @RequestParam("sex") String sex,
                                   @RequestParam("weight") int weight,
                                   @RequestParam("height") int height,
                                   @RequestParam("education") String education,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("birthday") String birthday,
                                   @RequestParam("ht") String homeTown,
                                   @RequestParam("adr") String address,
                                   @RequestParam("nation") String nation,
                                   HttpServletRequest request, Model model) throws Exception {
        EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
//        System.out.println(empDetail);

        empDetail.setEmpName(name);
        empDetail.setEmpSex(sex);
        empDetail.setEmpWeight(weight);
        empDetail.setEmpHeight(height);
        empDetail.setEmpEducation(education);
        empDetail.setEmpPhone(phone);
        empDetail.setEmpBirthday(Tool.formatStringToDate(birthday.replaceAll("-", "")));
        empDetail.setEmpHometown(homeTown);
        empDetail.setEmpAddress(address);
        empDetail.setEmpNation(nation);

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

    @RequestMapping("UpdateHeadPortrait.do")
    public String updateHeadPortrait(@RequestParam("image") CommonsMultipartFile image, HttpServletRequest request, Model model) throws IOException {

//        System.out.println(System.getProperty("user.dir"));
        final String fileDic = "C:\\Users\\Wuming\\Desktop\\Boda\\WebContent\\images\\avatar\\";
        EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
        String empDetailId = String.valueOf(empDetail.getEmpDetailId());

//        String empDetailId = "1";
        File temp = new File(fileDic + "temp");
        image.transferTo(temp);
        if (uds.updateHeadPortrait(empDetailId, temp)) {
            model.addAttribute("avatarMSG", "更新头像成功");
        } else {
            model.addAttribute("avatarMSG", "更新头像失败");
        }
        EmpDetail empDetailUpdated = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
        model.addAttribute("detailInfo", empDetailUpdated);
        return "个人中心";
    }
}