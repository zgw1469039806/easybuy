package com.bdqn.service.impl;

import com.bdqn.entity.Product;
import com.bdqn.entity.ProductCategory;
import com.bdqn.mapper.ProductCategoryMapper;
import com.bdqn.service.ProductCategoryService;
import com.bdqn.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * author：wen da
 * QQ：821685470
 * Date:2018-12-16
 * Time：21:02
 */
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService{

    public void setProductCategoryMapper(ProductCategoryMapper productCategoryMapper) {
        this.productCategoryMapper = productCategoryMapper;
    }

    @Autowired
    private ProductCategoryMapper productCategoryMapper;

    @Override
    public List<ProductCategory> queryProType() {
          return productCategoryMapper.queryProType();
    }

    @Override
    public int addProType(String cname, Integer parentId, Integer type) {
        return productCategoryMapper.addProType(cname,parentId,type);
    }

    @Override
    public List<ProductCategory> queryTypeId() {
        return productCategoryMapper.queryTypeId();
    }

    @Override
    public List<ProductCategory> queryTypeId2() {
        return productCategoryMapper.queryTypeId2();
    }

    @Override
    public List<ProductCategory> queryTypeId3() {
        return productCategoryMapper.queryTypeId3();
    }

    @Override
    public int del(Integer id) {
        return productCategoryMapper.del(id);
    }

    @Override
    public List<ProductCategory> byid(Integer id) {
        return productCategoryMapper.byid(id);
    }

    @Override
    public int update(ProductCategory productCategory) {
        return productCategoryMapper.update(productCategory);
    }


}
