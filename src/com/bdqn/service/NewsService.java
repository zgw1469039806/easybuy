package com.bdqn.service;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.News;
import com.bdqn.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @DATA 2018-12-25 15:19
 * @Author zhangguowei  WeChat:17630376104
 * @Description TODO
 */
public interface NewsService {

    public List<News> listByPage(PageHelper<News> pageHelper);

    public Integer pageCount();
}
