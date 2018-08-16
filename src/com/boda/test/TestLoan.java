package com.boda.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.boda.mapper.LoanMapper;
import com.boda.pojo.Loan;

public class TestLoan {
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
		LoanMapper loanMapper = sqlSession.getMapper(LoanMapper.class);		
		Loan loan = loanMapper.findCustomerMessageAndReturnMessage(1);
		sqlSession.commit();
		sqlSession.close();
		System.out.println(loan.toString());
		
	}

}
