package com.bdqn.controller;

import com.bdqn.entity.ProductCategory;
import com.bdqn.service.ProductCategoryService;
import com.bdqn.service.impl.ProductCategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * author：wen da
 * QQ：821685470
 * Date:2018-12-16
 * Time：20:57
 */
@Controller
public class ProductCategoryController {

    @Autowired
    private ProductCategoryService productCategoryService;

    @RequestMapping("/")
    public String test() {

        return "test";
    }


    @RequestMapping("/proType")
    public String queryProType(HttpServletRequest request) {
        List<ProductCategory> proCategoryList = productCategoryService.queryProType();
        request.setAttribute("proCateTypes", proCategoryList);
        return "productClass";
    }

    @RequestMapping("/addproType")
    public String addProType(@RequestParam("cname") String cname,
                             @RequestParam("parentId") Integer parentId,
                             @RequestParam("type") Integer type) {

        Integer add = productCategoryService.addProType(cname, parentId, type);
        if (add > 0) {
            System.out.println("添加成功--------" + add);
            return "redirect:/proType";
        }
        return "productClass-add";
    }

    @RequestMapping("/Seltypeid")
    public String queryTypeId(HttpServletRequest request) {
        List<ProductCategory> list = productCategoryService.queryTypeId();
        request.setAttribute("tpid", list);
        return "productClass-add";
    }

    @RequestMapping("/qbyid")
    public String queryid(@RequestParam("id") Integer id, HttpServletRequest request) {
        List<ProductCategory> list = productCategoryService.byid(id);
        request.setAttribute("qid", list);

        List<ProductCategory> list1 = productCategoryService.queryTypeId();
        request.setAttribute("tpid1", list1);

        List<ProductCategory> list2 = productCategoryService.queryTypeId2();
        request.setAttribute("tpid2", list2);

        List<ProductCategory> list3 = productCategoryService.queryTypeId3();
        request.setAttribute("tpid3", list3);
        return "productClass-modify";
    }

    @RequestMapping("/updd")
    public String update(@RequestParam("cname") String cname,
                         @RequestParam("type") Integer type,
                         @RequestParam("id") Integer id) {
        ProductCategory productCategory = new ProductCategory();
        productCategory.setCname(cname);
        productCategory.setType(type);
        productCategory.setId(id);

        Integer upd = productCategoryService.update(productCategory);
        if (upd > 0) {
            return "redirect:/proType";
        } else {
            return "productClass-modify";
        }
    }

    @RequestMapping(value = "/dels" ,method = RequestMethod.GET)
    public String del(@RequestParam("id") Integer id) {
        Integer del = productCategoryService.del(id);
        return "redirect:/proType";
    }

    @ResponseBody
    @RequestMapping("/selAll")
    public Object selAll() {
        List<ProductCategory> list = productCategoryService.queryProType();
        return list;

    }
}
