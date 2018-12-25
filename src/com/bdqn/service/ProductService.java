package com.bdqn.service;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.Product;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * author：wen da
 * QQ：821685470
 * Date:2018-12-17
 * Time：8:17
 */
public interface ProductService {
    /**
     * 查询商品列表(参数：对象入参)
     */
    public List<Product> queryProduct();

    //后台商品传值修改
    List<Product> ByidProCate(@Param("id") Integer id);

    //后台商品修改
    int updateProCate(Product product);

    //后台商品删除
    int delProCate(@Param("id") Integer id);

    //后台商品增加
    int addProCate(Product product);

    List<Product> selPage(Integer firs,Integer type,Integer id);//分页

    public List<Product> selectProductByPage(PageHelper<Product> pageHelper);

    public int selectCount();


}
