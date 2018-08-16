package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.CustomerMessage;

public interface CustomerMapper {
	
	/**
	 * 根据用户id查询用户详细信息
	 * @param id
	 * @return 员工详细信息信息
	 * @throws IOException
	 */
	public CustomerMessage findCustomerById(Integer customerId) throws IOException;
	
	/**
	 * 根据用户名字模糊查询用户信息
	 * @param empName
	 * @return 用户详细信息列表
	 * @throws IOException
	 */
	public List<CustomerMessage> findCustomerByName(String customerName) throws IOException;
	
	/**
	 * 添加一条用户信息
	 * @param customerMessage
	 * @return
	 * @throws IOException
	 */
	public Integer addCustomerMessage(CustomerMessage customerMessage) throws IOException;
	/**
	 * 更新用户详细信息
	 * @param customerMessage
	 * @return
	 * @throws IOException
	 */
	public Integer updateCustomerMessage(CustomerMessage customerMessage) throws IOException;
	
	/**
	 * 根据用户id删除用户信息
	 * @param customerId
	 * @return
	 * @throws IOException
	 */
	public Integer delCustomerById(Integer customerId) throws IOException;

}
