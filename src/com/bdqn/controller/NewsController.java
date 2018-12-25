package com.bdqn.controller;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.News;
import com.bdqn.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @DATA 2018-12-25 15:23
 * @Author zhangguowei  WeChat:17630376104
 * @Description TODO
 */
@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @ResponseBody
    @RequestMapping("/newsByPage")
    public PageHelper<News> newsByPage(Integer pageNo,Integer pageSize){

        PageHelper<News> pageHelper=new PageHelper<>();
        pageHelper.setPageNo(pageNo);
        pageHelper.setPageSize(pageSize);
        List<News> list=newsService.listByPage(pageHelper);
        pageHelper.setData(list);
        int sumCount=newsService.pageCount();
        int pageCount = sumCount % pageSize == 0 ? sumCount / pageSize : sumCount / pageSize + 1;
        pageHelper.setPageCount(pageCount);
        return pageHelper;
    }

}
