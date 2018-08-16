package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.CustomerMessage;

public interface CustomerMapper {
	
	/**
	 * �����û�id��ѯ�û���ϸ��Ϣ
	 * @param id
	 * @return Ա����ϸ��Ϣ��Ϣ
	 * @throws IOException
	 */
	public CustomerMessage findCustomerById(Integer customerId) throws IOException;
	
	/**
	 * �����û�����ģ����ѯ�û���Ϣ
	 * @param empName
	 * @return �û���ϸ��Ϣ�б�
	 * @throws IOException
	 */
	public List<CustomerMessage> findCustomerByName(String customerName) throws IOException;
	
	/**
	 * ���һ���û���Ϣ
	 * @param customerMessage
	 * @return
	 * @throws IOException
	 */
	public Integer addCustomerMessage(CustomerMessage customerMessage) throws IOException;
	/**
	 * �����û���ϸ��Ϣ
	 * @param customerMessage
	 * @return
	 * @throws IOException
	 */
	public Integer updateCustomerMessage(CustomerMessage customerMessage) throws IOException;
	
	/**
	 * �����û�idɾ���û���Ϣ
	 * @param customerId
	 * @return
	 * @throws IOException
	 */
	public Integer delCustomerById(Integer customerId) throws IOException;

}
