package com.boda.service;

import com.boda.mapper.CustomerMapper;
import com.boda.pojo.CustomerMessage;
import com.boda.util.Tool;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

public class CustomerMessageService {

    @Resource
    private CustomerMapper customerMapper;

    //一个搜索框，包括customer号或custoemr名称
    public List<CustomerMessage> getCusInfo(String customerId) throws Exception {

        List<CustomerMessage> customermessages = new LinkedList<>();

        if (Tool.isInteger(customerId)) { //优先以customerId号搜索
            customermessages.add(customerMapper.findCustomerById(Integer.parseInt(customerId)));
        } else {
            customermessages.addAll(customerMapper.findCustomerByName(customerId));
        }
        customermessages.remove(null);
        return customermessages;
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
