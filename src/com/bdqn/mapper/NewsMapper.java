package com.bdqn.mapper;

import com.bdqn.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @DATA 2018-12-25 15:12
 * @Author zhangguowei  WeChat:17630376104
 * @Description TODO
 */
public interface NewsMapper {

    public List<News> listByPage(@Param("firstResult") Integer firstResult,@Param("pageSize")Integer pageSize);

    public Integer pageCount();
}
