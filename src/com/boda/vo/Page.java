package com.boda.vo;

import java.util.List;

public class Page<T> {
    private Integer allPageNum;            //总页数
    private Integer pageSize;            //每页行数
    private Integer currentPage;        //当前页数
    private List<T> objList;        //当前页显示的信息

    public Page() {
        this.allPageNum = 0;
        this.currentPage = 1;
        this.pageSize = 10;
    }

    public Integer getAllPageNum() {
        return allPageNum;
    }

    public void setAllPageNum(Integer allPageNum) {
        this.allPageNum = allPageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageRowNum) {
        this.pageSize = pageRowNum;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public List<T> getObjList() {
        return objList;
    }

    public void setObjList(List<T> objList) {
        this.objList = objList;
    }

    @Override
    public String toString() {
        return "Page [allPageNum=" + allPageNum + ", pageRowNum=" + pageSize + ", currentPage=" + currentPage
                + ", objList=" + objList + "]";
    }
}
