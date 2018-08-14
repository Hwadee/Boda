package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Post;
import com.boda.pojo.PowerGroup;

public interface PowerGroupMapper {
	
	/**
	 * ����id��ѯȨ����Ϣ
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public PowerGroup findPowerById(Integer powerId) throws IOException;
	
	/**
	 * ����Ȩ������ģ����ѯȨ����Ϣ
	 * @param powerName
	 * @return
	 * @throws IOException
	 */
	public List<PowerGroup> findPowerByName(String powerName) throws IOException;
	
	/**
	 * ���Ȩ����Ϣ
	 * @param power
	 * @return
	 * @throws IOException
	 */
	public Integer addPowerMessage(PowerGroup power) throws IOException;
	
	/**
	 * ����id����Ȩ����Ϣ
	 * @param power
	 * @return
	 * @throws IOException
	 */
	public Integer updatePowerMessage(PowerGroup power) throws IOException;
	
	/**
	 * ����idɾ��Ȩ����Ϣ
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public Integer delPowerById(Integer powerId) throws IOException;

}
