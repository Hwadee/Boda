package com.boda.service;

import com.boda.mapper.CustomerMapper;
import com.boda.pojo.CustomerMessage;
import com.boda.vo.Page;

import org.springframework.stereotype.Service;
import com.boda.util.Tool;

import java.util.LinkedList;
import java.util.List;
import java.io.IOException;

import java.util.regex.Pattern;
import javax.annotation.Resource;

@Service
public class CustomerMessageService {

    @Resource
    private CustomerMapper customerMapper;

    //3个搜索框，包括customerphone或customerName或身份证
    public Page<CustomerMessage> getCusInfo(String customerName, String customerPhone, String customerIdentityId, Page<CustomerMessage> page) throws IOException {

        List<CustomerMessage> customerMessages = new LinkedList<>();

        int pageMAXRow = page.getPageSize();
        int startRow = (page.getCurrentPage() - 1) * page.getPageSize();

        customerMessages.addAll(customerMapper.findCustomer(customerName, customerPhone, customerIdentityId, startRow, page.getPageSize()));

        page.setObjList(customerMessages);

        int allRowNum = customerMapper.findCusCount(customerName, customerPhone, customerIdentityId);
        int allPageNum = allRowNum % pageMAXRow == 0 ? allRowNum / pageMAXRow : allRowNum / pageMAXRow + 1;
        page.setAllPageNum(allPageNum);
        System.out.println(customerMessages);
        return page;
    }

    public boolean updateCusInfo(CustomerMessage customerMessage) throws Exception {

        return customerMapper.updateCustomerMessage(customerMessage) > 0;
    }

    public boolean addCusInfo(CustomerMessage customerMessage) throws Exception {

        return customerMapper.addCustomerMessage(customerMessage) > 0;
    }

    public boolean delCusInfo(int customerId) throws Exception {

        return customerMapper.delCustomerById(customerId) > 0;
    }

}
