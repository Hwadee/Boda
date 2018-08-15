package com.boda.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.boda.mapper.EmpDetailMapper;
import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;

public class TestEmpDetail {
	
	@Test
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
		EmpDetailMapper eDetailMapper = sqlSession.getMapper(EmpDetailMapper.class);
		List<EmpDetail> empDetail = eDetailMapper.findEmpDetailByName("张");
		sqlSession.commit();
		sqlSession.close();
		System.out.println(empDetail.toString());
		
	}
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
		EmpDetailMapper eDetailMapper = sqlSession.getMapper(EmpDetailMapper.class);	
		EmpDetail empDetail = eDetailMapper.findEmpDetailById(7);
		empDetail.setEmpAddress("成都");
		empDetail.setEmpEducation("本科");
		eDetailMapper.updateEmpDetail(empDetail);
		sqlSession.commit();
		sqlSession.close();
		System.out.println(empDetail.toString());
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
