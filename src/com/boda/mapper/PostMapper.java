package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Post;

public interface PostMapper {
	
	/**
	 * 根据id查询职务信息
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public Post findPostById(Integer postId) throws IOException;

	/**
	 * 根据部门id查询所有职务信息
	 *
	 * @param deptId
	 * @return
	 * @throws IOException
	 */
	public List<Post> findPostByDeptId(Integer deptId) throws IOException;

	/**
	 * 根据职务名字模糊查询职务信息
	 * @param postName
	 * @return
	 * @throws IOException
	 */
	public List<Post> findPostByName(String postName) throws IOException;
	
	/**
	 * 添加职务信息
	 * @param post
	 * @return
	 * @throws IOException
	 */
	public Integer addPostMessage(Post post) throws IOException;
	
	/**
	 * 根据id更新职务信息
	 * @param post
	 * @return
	 * @throws IOException
	 */
	public Integer updatePostMessage(Post post) throws IOException;
	
	/**
	 * 根据id删除职务信息
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public Integer delPostById(Integer postId) throws IOException;

}
