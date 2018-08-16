package com.boda.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;
import com.boda.service.UserManagerService;
import com.boda.unit.SessionFactory;

@Controller
public class UserManager {
	
	@Resource
	UserManagerService ums;

	@RequestMapping("/IntoLogin.do")
	public String IntoLoginController() throws IOException{
		ums.userLogin();
		return "userLogin";
	}
	
	@RequestMapping("/UserLogin.do")
	public void UserLoginController(String account,String password,Model model) throws IOException{
		//从静态单例工厂获取sqlSession
		/*SqlSession sqlSession = SessionFactory.getSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = employeeMapper.findEmpByAccount(account);
		sqlSession.commit();
		sqlSession.close();*/
		
	}
}
