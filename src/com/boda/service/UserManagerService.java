package com.boda.service;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boda.mapper.EmpDetailMapper;
import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;
import com.boda.unit.SessionFactory;
@Service
public class UserManagerService {
	
	@Autowired
	private EmployeeMapper employeeMapper;
	
	public Employee userLogin() throws IOException {
		Employee employee = employeeMapper.findEmpDetailByAccount("100");
		System.out.println(employee.toString());
		return employee;
	}

}
