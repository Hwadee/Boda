package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Post;

public interface PostMapper {
	
	/**
	 * ����id��ѯְ����Ϣ
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public Post findPostById(Integer postId) throws IOException;
	
	/**
	 * ����ְ������ģ����ѯְ����Ϣ
	 * @param postName
	 * @return
	 * @throws IOException
	 */
	public List<Post> findPostByName(String postName) throws IOException;
	
	/**
	 * ���ְ����Ϣ
	 * @param post
	 * @return
	 * @throws IOException
	 */
	public Integer addPostMessage(Post post) throws IOException;
	
	/**
	 * ����id����ְ����Ϣ
	 * @param post
	 * @return
	 * @throws IOException
	 */
	public Integer updatePostMessage(Post post) throws IOException;
	
	/**
	 * ����idɾ��ְ����Ϣ
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public Integer delPostById(Integer postId) throws IOException;

}
