package com.boda.service;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;
import com.boda.unit.SessionFactory;
@Service
public class UserManagerService {
	
	public Employee userLogin(String account,String password) throws IOException {
		
		SqlSession sqlSession = SessionFactory.getSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = employeeMapper.findEmpByAccount(account);
		sqlSession.commit();
		sqlSession.close();	
		if(employee!=null && employee.getEmpPassword().equals(password))
		{
			return employee;
		}
		return null;
	}

}
