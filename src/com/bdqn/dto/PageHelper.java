package com.bdqn.dto;

import java.util.List;

/**
 * @ClassName PageHelper
 * @Author alan.wang   QQ:3103484396
 * @Description TODO
 */
public class PageHelper<T>
{
    private Integer pageNo;
    private Integer pageSize;
    private Integer pageCount;
    private Integer firstResult;
    private List<T> data;


    public Integer getFirstResult() {
        this.firstResult = (this.pageNo - 1) * pageSize;
        return this.firstResult;
    }

    public void setFirstResult(Integer firstResult) {
        this.firstResult = firstResult;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }
}
