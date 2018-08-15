package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.EmpPowerRelation;

public interface EmpPowerRelationMapper {
	
	/**
	 * 根据职务id查询该职务所拥有的所有权限
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public List<EmpPowerRelation> findPowerByPostId(Integer postId) throws IOException;
	
	/**
	 * 根据权限id查询拥有这项权限的所有职务
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public List<EmpPowerRelation> findPostByPowerId(Integer powerId) throws IOException;
	
	/**
	 * 为某职务添加权限
	 * @param empPowerRelation
	 * @return
	 * @throws IOException
	 */
	public Integer addPostPowerRelation(EmpPowerRelation empPowerRelation) throws IOException;
	
	/**
	 * 删除某职务的某权限
	 * @param empPowerRelation
	 * @return
	 * @throws IOException
	 */
	public Integer delPostPowerRelation(EmpPowerRelation empPowerRelation) throws IOException;

}
