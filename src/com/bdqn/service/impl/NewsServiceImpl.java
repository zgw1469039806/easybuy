package com.bdqn.service.impl;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.News;
import com.bdqn.entity.Product;
import com.bdqn.mapper.NewsMapper;
import com.bdqn.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @DATA 2018-12-25 15:19
 * @Author zhangguowei  WeChat:17630376104
 * @Description TODO
 */
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<News> listByPage(PageHelper<News> pageHelper) {
        return newsMapper.listByPage(pageHelper.getFirstResult(),pageHelper.getPageSize());
    }

    @Override
    public Integer pageCount() {
        return newsMapper.pageCount();
    }
}
