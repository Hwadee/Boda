package com.boda.controller;

import com.boda.pojo.CustomerMessage;
import com.boda.service.CustomerMessageService;

import com.boda.util.Tool;
import com.boda.vo.Page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;

@Controller
public class CustomerMessageManager {

    @Resource
    CustomerMessageService ds;

    @RequestMapping("/IntoCusInfo.do")
    public String intoCusInfo() {
        return "客户信息查询";
    }

    @RequestMapping("/CusInfo.do")
    public String cusInfo(String customerName, String customerPhone, String customerIdentityId, Page<CustomerMessage> page, Model model) throws Exception {

        final int PAGE_SIZE = 10;
        System.out.println(page.getCurrentPage());
        if (page.getCurrentPage() == null || page.getCurrentPage() == 0) {
            page.setCurrentPage(1);
            page.setPageSize(PAGE_SIZE);
        }

        page = ds.getCusInfo(customerName, customerPhone, customerIdentityId, page);

        if (page.getObjList().isEmpty()) {
            model.addAttribute("searchMSG", "无符合结果");
        } else {
            model.addAttribute("cusPage", page);
        }
        return "客户信息查询";
    }

    @RequestMapping("/QueryUpdatecustomerInfo.do")
    public String queryUpdatecustomerInfo(String customerId, Model model) throws Exception {

        CustomerMessage customerMessage = ds.getcustomerInfo(customerId).get(0);
        model.addAttribute("infotoupdate", customerMessage);

        return "UpdateCusInfo";
    }

    @RequestMapping("/UpdateCusInfo.do")
    public String updateCusInfo(String customerId, String customerName, String customerSex, String customerIdentityId, String customerBirthday, String customerEmail, String customerPhone, String customerAddress, Integer customerCredit, Model model) throws Exception {

        CustomerMessage customer = new CustomerMessage();
        customer.setCustomerId(Integer.parseInt(customerId));
        customer.setCustomerName(customerName);
        customer.setCustomerSex(customerSex);
        customer.setCustomerIdentityId(customerIdentityId);
        customer.setCustomerBirthday(Tool.formatStringToDate(customerBirthday));
        customer.setCustomerEmail(customerEmail);
        customer.setCustomerPhone(customerPhone);
        customer.setCustomerAddress(customerAddress);
        customer.setCustomerCredit(customerCredit);
        if (ds.updateCusInfo(customer)) {
            model.addAttribute("MSG", "更新成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }
        return "客户信息查询";
    }

    @RequestMapping("/AddCusInfo.do")
    public String addCusInfo(String customerName, String customerSex, String customerIdentityId, String customerBirthday, String customerEmail, String customerPhone, String customerAddress, Integer customerCredit, Model model) throws Exception {

        //暂时性，应在前端判断输入
        if ("".equals(customerName)) {
            model.addAttribute("MSG", "新增失败，缺少客户名称");
            return "客户信息查询";
        }

        CustomerMessage customer = new CustomerMessage();
        customer.setCustomerName(customerName);
        customer.setCustomerSex(customerSex);
        customer.setCustomerIdentityId(customerIdentityId);
        customer.setCustomerBirthday(Tool.formatStringToDate(customerBirthday));
        customer.setCustomerEmail(customerEmail);
        customer.setCustomerPhone(customerPhone);
        customer.setCustomerAddress(customerAddress);
        customer.setCustomerCredit(customerCredit);

        if (ds.addCusInfo(customer)) {
            model.addAttribute("MSG", "新增成功");
        } else {
            model.addAttribute("MSG", "新增失败");
        }
        return "客户信息查询";
    }

    @RequestMapping("/DelCusInfo.do")
    public String delCusInfo(int customerId, Model model) throws Exception {

        if (ds.delCusInfo(customerId)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "客户信息查询";
    }
}
