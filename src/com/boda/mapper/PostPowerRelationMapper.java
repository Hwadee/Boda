package com.boda.mapper;

import com.boda.pojo.Post;
import com.boda.pojo.PostPowerRelation;

import java.io.IOException;
import java.util.List;

public interface PostPowerRelationMapper {

    /**
     * 根据职务id查询该职务所拥有的所有权限
     *
     * @param postId
     * @return
     * @throws IOException
     */
    public List<PostPowerRelation> findPowerByPostId(Integer postId) throws IOException;

    /**
     * 根据权限id查询拥有这项权限的所有职务
     *
     * @param powerId
     * @return
     * @throws IOException
     */
    public List<PostPowerRelation> findPostByPowerId(Integer powerId) throws IOException;

    /**
     * 为某职务添加权限
     *
     * @param empPowerRelation
     * @return
     * @throws IOException
     */
    public Integer addPostPowerRelation(PostPowerRelation empPowerRelation) throws IOException;

    /**
     * 删除某职务的某权限
     *
     * @param empPowerRelation
     * @return
     * @throws IOException
     */
    public Integer delPostPowerRelation(Integer postId) throws IOException;

}
