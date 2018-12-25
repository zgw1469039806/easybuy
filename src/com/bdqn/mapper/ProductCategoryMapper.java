package com.bdqn.mapper;

import com.bdqn.entity.Product;
import com.bdqn.entity.ProductCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * author：wen da
 * QQ：821685470
 * Date:2018-12-16
 * Time：21:00
 */
public interface ProductCategoryMapper {
    List<ProductCategory> queryProType(); //首页分类显示,···查找后台分类

    int addProType(@Param("cname") String cname,
                   @Param("parentId")Integer parentId,
                   @Param("type")Integer type); //增加分类管理列表

    //查询type等于1的
    List<ProductCategory> queryTypeId();
    //查询type等于2的
    List<ProductCategory> queryTypeId2();
    //查询type等于3的
    List<ProductCategory> queryTypeId3();

    int del(@Param("id") Integer id);

    List<ProductCategory> byid(@Param("id") Integer id);

    //修改
    int update(ProductCategory productCategory);




}
