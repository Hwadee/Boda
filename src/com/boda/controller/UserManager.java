package com.boda.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.boda.pojo.EmpDetail;
import com.boda.service.UserDetailService;
import com.boda.util.EmailSender;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boda.pojo.Employee;
import com.boda.service.UserManagerService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserManager {

    @Resource
    UserManagerService ums;
    @Resource
    UserDetailService uds;

    @RequestMapping("/IntoLogin.do")
    public String IntoLoginController() {
        return "userLogin";
    }

    @RequestMapping("/IntoForgetPasswd.do")
    public String intoForgetPasswd() {
        return "忘记密码";
    }

//    @RequestMapping("/UserLogin.do")
//    public String UserLoginController(String account, String password, HttpServletRequest request, Model model) throws IOException {
//
//        Employee employee = null;
//
//        if ((employee = ums.userLogin(account, password)) != null) {
//            model.addAttribute("MSG", account);
//            request.getSession().setAttribute("currentUser", employee);
//            return "index2";
//        } else {
//            model.addAttribute("MSG", "账号或密码错误！");
//            return "userLogin";
//        }
//    }

    @RequestMapping("/UpdatePassword.do")
    public String updatePassword(@RequestParam("req") String req, @RequestParam("password1") String password1, HttpServletRequest request, Model model) {

        Employee emp = (Employee) request.getSession().getAttribute("employee");
        if (emp.getEmpPassword().equals(req)) {
            emp.setEmpPassword(password1);
            try {
                if (ums.updatePassword(emp)) {
                    model.addAttribute("MSG", "密码修改成功！请重新登录");
                    return "userLogin";
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        model.addAttribute("PSW", "修改失败！输入密码错误！");
        EmpDetail empDetail = (EmpDetail) request.getSession().getAttribute("currentUserInfo");
        model.addAttribute("detailInfo", empDetail);
        return "个人中心";
    }

    @RequestMapping("/IntoEmpInfo.do")
    public String intoEmpInfo() {
        return "人员管理";
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
            model.addAttribute("empId", empId);
            model.addAttribute("empName", empName);
            model.addAttribute("empDept", empDept);
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

    //找回密码发送验证邮件
    @RequestMapping("SendValidationEmail.do")
    public String sendValidationEmail(String empAccount, Model model, HttpServletRequest request) {

        EmpDetail empDetail = null;
        try {
            empDetail = uds.getUserDetailByAccount(empAccount);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (empDetail == null) {
            model.addAttribute("MSG", "账户不存在，请重试");
            return "忘记密码";
        }
        String code = Tool.genValidationCode();
        if (EmailSender.sendValidationEmail(empDetail.getEmpEmail(), code)) {
            request.getSession().setAttribute("validationCode", code.toUpperCase());
            model.addAttribute("successMSG", "验证码已发送");
            model.addAttribute("account", empAccount);
        } else {
            model.addAttribute("MSG", "验证码发送出错，请重试");
        }
        return "忘记密码";
    }

    //重置密码
    @RequestMapping("ForgetPasswd.do")
    public String forgetPasswd(String empAccount, String code, HttpServletRequest request, Model model) throws Exception {

        if (code.toUpperCase().equals(request.getSession().getAttribute("validationCode"))) {
            if (ums.resetPasswd(empAccount)) {
                model.addAttribute("MSG", "重置密码成功，将跳转至登录页面");
                return "userLogin";
            } else {
                model.addAttribute("MSG", "重置密码失败，请重试");
                return "忘记密码";
            }
        } else {
            model.addAttribute("MSG", "验证码错误，请重试");
            return "忘记密码";
        }
    }
}
