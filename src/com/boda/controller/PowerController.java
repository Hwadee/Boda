package com.boda.controller;

import com.boda.pojo.Employee;
import com.boda.pojo.PostPowerRelation;
import com.boda.service.PowerControllerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@Controller
public class PowerController {

    @Resource
    private PowerControllerService powerControllerService;

    @RequestMapping("/toLogin.do")
    public String toLogin() {
        return "userLogin";
    }

    @RequestMapping("/login.do")
    public String loginController(HttpServletRequest request, Model model, String account, String password) {
        Employee employee = null;
        try {
            if ((employee = powerControllerService.userLogin(account, password)) != null) {
                List<PostPowerRelation> powerList = powerControllerService.findPowerByPostId(employee.getPostId());
                request.getSession().setAttribute("employee", employee);
                request.getSession().setAttribute("powerList", powerList);
                return "index";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("MSG", "账户或密码错误");
        return "userLogin";
    }

    @RequestMapping("/logout.do")
    public String logoutController(HttpServletRequest request, Model model) {
        powerControllerService.logoutControlService(request, model);
        return "userLogin";
    }

    @RequestMapping("/EditPower.do")
    public String editPower(String postId, String powerarg, Model model) throws Exception {

//        String postId = "3";
//        String power = "24";
        char[] powerChar = powerarg.toCharArray();
        List<PostPowerRelation> powerList = new LinkedList<>();

        for (char s : powerChar) {
            System.out.println(s);
            PostPowerRelation ppr = new PostPowerRelation();
            ppr.setPostId(Integer.parseInt(postId));
            ppr.setPowerId(Integer.parseInt(String.valueOf(s)));
            powerList.add(ppr);
        }
        if (powerControllerService.editPower(powerList)) {
            model.addAttribute("MSG", "更新权限成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }

        return "redirect:IntoPowerSetting.do";
    }
}
