package com.boda.mapper;

import java.io.IOException;

import com.boda.pojo.Employee;

public interface EmployeeMapper {
	/**
	 * 根据ID查询employee
	 * @param 员工id
	 * @return
	 * @throws IOException
	 */
	public Employee findEmpById(Integer id) throws IOException;
	
	/**
	 * 根据账户名查询employee
	 * @param 员工account
	 * @return 员工账户表的信息
	 * @throws IOException
	 */
	public Employee findEmpByAccount(String account) throws IOException;
	
	/**
	 * 根据员工账户查询员工详细信息
	 * @param 员工account
	 * @return 映射类型详细信息
	 * @throws IOException
	 */
	public Employee findEmpDetailByAccount(String account) throws IOException; 
	
	
	/**
	 * 新增一个员工账户
	 * @param employee
	 * @return 带id的原信息
	 * @throws IOException
	 */
	public Integer addEmployee(Employee employee) throws IOException; 
	
	/**
	 * 根据id更新用户信息
	 * @param employee
	 * @return
	 * @throws IOException
	 */
	public void updateUserById(Employee employee) throws IOException;
	
	/**
	 * 根据用户id删除用户
	 * @param id
	 * @throws IOException
	 */
	public void delUserById(Integer id) throws IOException;
	
	

}
