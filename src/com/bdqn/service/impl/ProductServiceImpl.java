package com.bdqn.service.impl;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.Product;
import com.bdqn.entity.ProductCategory;
import com.bdqn.mapper.ProductMapper;
import com.bdqn.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductMapper productMapper;


    @Override
    public List<Product> queryProduct() {
        return null;
    }

    @Override
    public List<Product> ByidProCate(Integer id) {
        return null;
    }

    @Override
    public int updateProCate(Product product) {
        return 0;
    }

    @Override
    public int delProCate(Integer id) {
        return 0;
    }

    @Override
    public int addProCate(Product product) {
        return 0;
    }

    @Override
    public List<Product> selPage(Integer firs, Integer type, Integer id) {
        return null;
    }



    //分页方法
    @Override
    public List<Product> selectProductByPage(PageHelper<Product> pageHelper) {

        return productMapper.selectProductByPage(pageHelper.getFirstResult(),pageHelper.getPageSize());
    }


    @Override
    public int selectCount() {
        return productMapper.selectCount();
    }
}
