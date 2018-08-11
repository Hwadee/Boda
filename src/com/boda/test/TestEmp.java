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
		//Mybatis�����ļ�·��
		String sqlConfig = "SqlMapConfig.xml";
		//���������ļ�
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//����session����
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//�ӹ�����ȡsession�Ự
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
		//Mybatis�����ļ�·��
		String sqlConfig = "SqlMapConfig.xml";
		//���������ļ�
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//����session����
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//�ӹ�����ȡsession�Ự
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
		//Mybatis�����ļ�·��
		String sqlConfig = "SqlMapConfig.xml";
		//���������ļ�
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//����session����
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//�ӹ�����ȡsession�Ự
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
		//Mybatis�����ļ�·��
		String sqlConfig = "SqlMapConfig.xml";
		//���������ļ�
		InputStream iStream = Resources.getResourceAsStream(sqlConfig);
		//����session����
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		//�ӹ�����ȡsession�Ự
		SqlSession sqlSession = sessionFactory.openSession();
		EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);		
		Employee employee = new Employee();
		employee = employeeMapper.findEmpByAccount("101");
		employeeMapper.delUserById(employee.getEmpId());
		sqlSession.commit();
		sqlSession.close();
		System.out.println("ɾ���ɹ�");
	}
*/
}
