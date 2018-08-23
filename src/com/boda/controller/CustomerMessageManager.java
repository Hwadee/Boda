package com.boda.controller;

import com.boda.pojo.CustomerMessage;
import com.boda.service.CustomerMessageService;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;


public class CustomerMessageManager {

    @Resource
    CustomerMessageService ds;

    @RequestMapping("/IntoCusInfo.do")
    public String intoCusInfo() {
        return "cusInfo";
    }

    @RequestMapping("/CusInfo.do")
    public String cusInfo(String customerId, Model model) throws Exception {

        List<CustomerMessage> customerMessages = ds.getCusInfo(customerId);
        customerMessages.remove(null);
        System.out.println(customerMessages);
        if (!customerMessages.isEmpty()) {
            model.addAttribute("cusInfo", customerMessages);
        } else {
            System.out.println("Else");
            model.addAttribute("MSG", "无符合结果");
        }
        return "cusInfo";
    }

    @RequestMapping("/UpdateCusInfo.do")
    public String updateCusInfo(Integer customerId, String customerName, String customerSex, String customerIdentityId, Date customerBirthday, String customerEmail, String customerPhone, String customerAddress, Integer customerCredit, Model model) throws Exception {

        System.out.println(customerName);
        com.boda.pojo.CustomerMessage customer = new com.boda.pojo.CustomerMessage();
        customer.setCustomerId((customerId));
        customer.setCustomerName(customerName);
        customer.setCustomerSex(customerSex);
        customer.setCustomerIdentityId(customerIdentityId);
        customer.setCustomerBirthday(customerBirthday);
        customer.setCustomerEmail(customerEmail);
        customer.setCustomerPhone(customerPhone);
        customer.setCustomerAddress(customerAddress);
        customer.setCustomerCredit(customerCredit);
        if (ds.updateCusInfo(customer)) {
            model.addAttribute("MSG", "更新成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }
        return "cusInfo";
    }

    @RequestMapping("/AddCusInfo.do")
    public String addCusInfo(Integer customerId, String customerName, String customerSex, String customerIdentityId, Date customerBirthday, String customerEmail, String customerPhone, String customerAddress, Integer customerCredit, Model model) throws Exception {

        CustomerMessage customer = new CustomerMessage();
        customer.setCustomerId((customerId));
        customer.setCustomerName(customerName);
        customer.setCustomerSex(customerSex);
        customer.setCustomerIdentityId(customerIdentityId);
        customer.setCustomerBirthday(customerBirthday);
        customer.setCustomerEmail(customerEmail);
        customer.setCustomerPhone(customerPhone);
        customer.setCustomerAddress(customerAddress);
        customer.setCustomerCredit(customerCredit);

        if (ds.addCusInfo(customer)) {
            model.addAttribute("MSG", "新增成功");
        } else {
            model.addAttribute("MSG", "新增失败");
        }
        return "cusInfo";
    }

    @RequestMapping("/DelCusInfo.do")
    public String delCusInfo(int customerId, Model model) throws Exception {

        if (ds.delCusInfo(customerId)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "cusInfo";
    }
}
