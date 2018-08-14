package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Post;
import com.boda.pojo.PowerGroup;

public interface PowerGroupMapper {
	
	/**
	 * 根据id查询权限信息
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public PowerGroup findPowerById(Integer powerId) throws IOException;
	
	/**
	 * 根据权限名字模糊查询权限信息
	 * @param powerName
	 * @return
	 * @throws IOException
	 */
	public List<PowerGroup> findPowerByName(String powerName) throws IOException;
	
	/**
	 * 添加权限信息
	 * @param power
	 * @return
	 * @throws IOException
	 */
	public Integer addPowerMessage(PowerGroup power) throws IOException;
	
	/**
	 * 根据id更新权限信息
	 * @param power
	 * @return
	 * @throws IOException
	 */
	public Integer updatePowerMessage(PowerGroup power) throws IOException;
	
	/**
	 * 根据id删除权限信息
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public Integer delPowerById(Integer powerId) throws IOException;

}
