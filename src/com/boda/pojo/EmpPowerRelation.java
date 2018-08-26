package com.boda.pojo;

public class EmpPowerRelation {
    //职位权限关系维护表
    private Integer postId;
    private Integer powerId;

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public Integer getPowerId() {
        return powerId;
    }

    public void setPowerId(Integer powerId) {
        this.powerId = powerId;
    }

}
