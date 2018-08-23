package com.boda.service;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;

import javax.annotation.Resource;

@Service
public class UserManagerService {

    @Resource
    private EmployeeMapper employeeMapper;

    public Employee userLogin(String account, String password) throws IOException {

//        SqlSession sqlSession = SessionFactory.getSession();
//        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
        Employee employee = employeeMapper.findEmpByAccount(account);
        System.out.println(employee);
//        sqlSession.commit();
//        sqlSession.close();
        if (employee != null && employee.getEmpPassword().equals(password)) {
            return employee;
        }
        return null;
    }

}
