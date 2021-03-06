package com.boda.service;

import com.boda.mapper.EmployeeMapper;
import com.boda.mapper.PostPowerRelationMapper;
import com.boda.pojo.Employee;
import com.boda.pojo.PostPowerRelation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Service
public class PowerControllerService {
    @Resource
    private PostPowerRelationMapper postPowerRelationMapper;
    @Resource
    private EmployeeMapper employeeMapper;

    public Employee userLogin(String account, String password) throws IOException {

        Employee employee = employeeMapper.findEmpByAccount(account);
        System.out.println(employee);
        if (employee != null && employee.getEmpPassword().equals(password)) {
            return employee;
        }
        return null;
    }

    public List<PostPowerRelation> findPowerByPostId(Integer postId) throws IOException {
        return postPowerRelationMapper.findPowerByPostId(postId);
    }

    public boolean editPower(List<PostPowerRelation> powerList) throws Exception {

        // 先删除该职位所有权限
        postPowerRelationMapper.delPostPowerRelation(powerList.get(0).getPostId());

        for (PostPowerRelation postPowerRelation : powerList) {
            if (postPowerRelationMapper.addPostPowerRelation(postPowerRelation) == 0) {
                return false;
            }
        }
        return true;
    }

    public void logoutControlService(HttpServletRequest request, Model model) {
        request.getSession().removeAttribute("employee");
        request.getSession().removeAttribute("powerList");
    }
}
