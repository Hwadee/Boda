package com.boda.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;

public class TestEmp {
	
	/*@Test
	public void quaryEmployeeTest() throws IOException
	{
		//Mybatis配置文件路径
		String sqlConfig = "SqlMapConfig.xml";
		//加载配置文件
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//创建session工厂
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//从工厂获取session会话
		SqlSession sqlSession = sessionFactory.openSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = employeeMapper.findEmpDetailByAccount("100");
		sqlSession.commit();
		sqlSession.close();
		System.out.println(employee.toString());
		
	}*/
	/*@Test
	public void quaryEmployeeTest2() throws IOException
	{
		//Mybatis配置文件路径
		String sqlConfig = "SqlMapConfig.xml";
		//加载配置文件
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//创建session工厂
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//从工厂获取session会话
		SqlSession sqlSession = sessionFactory.openSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = new Employee();
		employee.setEmpAccount("103");
		employee.setPostId(1);
		employee.setEmpPassword("123456");
		int num = employeeMapper.addEmployee(employee);
		sqlSession.commit();
		sqlSession.close();
		System.out.println(employee.toString());
	}*/
	/*@Test
	public void quaryEmployeeTest3() throws IOException
	{
		//Mybatis配置文件路径
		String sqlConfig = "SqlMapConfig.xml";
		//加载配置文件
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//创建session工厂
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//从工厂获取session会话
		SqlSession sqlSession = sessionFactory.openSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = new Employee();
		employee = employeeMapper.findEmpByAccount("101");
		employee.setEmpPassword("256789");
		employeeMapper.updateUserById(employee);
		sqlSession.commit();
		sqlSession.close();
		System.out.println(employee.toString());
	}*/
	
	/*@Test
	public void quaryEmployeeTest3() throws IOException
	{
		//Mybatis配置文件路径
		String sqlConfig = "SqlMapConfig.xml";
		//加载配置文件
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//创建session工厂
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//从工厂获取session会话
		SqlSession sqlSession = sessionFactory.openSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = new Employee();
		employee = employeeMapper.findEmpByAccount("101");
		employeeMapper.delUserById(employee.getEmpId());
		sqlSession.commit();
		sqlSession.close();
		System.out.println("删除成功");
	}
*/
}
