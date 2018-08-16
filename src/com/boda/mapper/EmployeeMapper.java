package com.boda.mapper;

import java.io.IOException;

import com.boda.pojo.Employee;

public interface EmployeeMapper {
	/**
	 * ����ID��ѯemployee
	 * @param Ա��id
	 * @return
	 * @throws IOException
	 */
	public Employee findEmpById(Integer id) throws IOException;
	
	/**
	 * �����˻�����ѯemployee
	 * @param Ա��account
	 * @return Ա���˻������Ϣ
	 * @throws IOException
	 */
	public Employee findEmpByAccount(String account) throws IOException;
	
	/**
	 * ����Ա���˻���ѯԱ����ϸ��Ϣ
	 * @param Ա��account
	 * @return ӳ��������ϸ��Ϣ
	 * @throws IOException
	 */
	public Employee findEmpDetailByAccount(String account) throws IOException; 
	
	
	/**
	 * ����һ��Ա���˻�
	 * @param employee
	 * @return ��id��ԭ��Ϣ
	 * @throws IOException
	 */
	public Integer addEmployee(Employee employee) throws IOException; 
	
	/**
	 * ����id�����û���Ϣ
	 * @param employee
	 * @return
	 * @throws IOException
	 */
	public void updateUserById(Employee employee) throws IOException;
	
	/**
	 * �����û�idɾ���û�
	 * @param id
	 * @throws IOException
	 */
	public void delUserById(Integer id) throws IOException;
	
	

}
