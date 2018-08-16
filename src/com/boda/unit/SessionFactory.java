package com.boda.unit;

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
			//Mybatis�����ļ�·��
			String sqlConfig = "SqlMapConfig.xml";
			//���������ļ�
			InputStream iStream = Resources.getResourceAsStream(sqlConfig);
			//����session����
			sessionFactory = new SqlSessionFactoryBuilder().build(iStream);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static SqlSession getSession()
	{
		return sessionFactory.openSession();
	}

}
