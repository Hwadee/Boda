package com.boda.util;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionFactory {
	private static SqlSessionFactory sessionFactory = null;
	static 
	{
		try {
			//Mybatis配置文件路径
			String sqlConfig = "SqlMapConfig.xml";
			//加载配置文件
			InputStream iStream = Resources.getResourceAsStream(sqlConfig);
			//创建session工厂
			sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static SqlSession getSession()
	{
		return sessionFactory.openSession();
	}

}
