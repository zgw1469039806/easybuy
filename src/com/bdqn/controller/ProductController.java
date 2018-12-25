package com.bdqn.controller;

import com.bdqn.dto.PageHelper;
import com.bdqn.entity.ProductCategory;
import com.bdqn.service.ProductCategoryService;
import com.bdqn.service.ProductService;
import com.bdqn.service.impl.ProductCategoryServiceImpl;
import com.bdqn.service.impl.ProductServiceImpl;
import com.bdqn.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductCategoryService productCategoryService;

    @RequestMapping("/queProduct")
    public String queryProduct(HttpServletRequest request) {
        List<Product> productList = productService.queryProduct();
        request.setAttribute("product", productList);
        List<ProductCategory> proCategoryList = productCategoryService.queryProType();
        request.setAttribute("proCateType", proCategoryList);
        return "index";
    }

    //后台商品展示
    @RequestMapping("/quePro")
    public String queryPro(HttpServletRequest request) {
        List<Product> productList = productService.queryProduct();
        request.setAttribute("pro", productList);
        return "product";
    }

    @RequestMapping("/ubyid")
    public String byid(@RequestParam("id") Integer id, HttpServletRequest request) {
        List<Product> list = productService.ByidProCate(id);
        request.setAttribute("bid", list);
        return "product-modify";
    }

    @RequestMapping("/upPrCat")
    public String updateProCate(Product product, HttpServletRequest request) {

        product.setName(request.getParameter("name"));
        product.setDescription(request.getParameter("description"));
        product.setPrice(Integer.parseInt(request.getParameter("price")));
        product.setStock(Integer.parseInt(request.getParameter("stock")));
        product.setFileName(request.getParameter("fileName"));
        product.setId(Integer.parseInt(request.getParameter("id")));

        Integer up = productService.updateProCate(product);

        if (up > 0) {
            return "redirect:/quePro";
        }
        return "product-modify";
    }

    @RequestMapping("/delProcat")
    public String del(@RequestParam("id") Integer id) {
        Integer del = productService.delProCate(id);

        return "redirect:/quePro";

    }

    @RequestMapping(value = "/adpro", method = RequestMethod.POST)
    public String addProcat(Product product, HttpServletRequest request, MultipartFile file) {

        try {
            String upda = request.getServletContext().getRealPath("/upoad");

            File file1 = new File(upda);
            if (file1.exists() == false) {

                file1.mkdirs();
            }
            file.transferTo(new File(file1, file.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        } finally {

            System.out.println("fileName-------------:"+file.getOriginalFilename());
            product.setName(request.getParameter("name"));
            product.setDescription(request.getParameter("description"));
            product.setPrice(Integer.parseInt(request.getParameter("price")));
            product.setStock(Integer.parseInt(request.getParameter("stock")));
            product.setFileName(file.getOriginalFilename());
        }

        int ad = productService.addProCate(product);
        if (ad > 0) {
            return "redirect:/quePro";
        }
        return "product-add";
    }

    @ResponseBody
    @RequestMapping(value = "/selPage", method = RequestMethod.GET)
    public Object SelPage(Integer firs, Integer type, Integer id) {
        List<Product> list = productService.selPage(firs, type, id);
        return list;
    }

    @ResponseBody
    @RequestMapping("/selByPage")
    public PageHelper<Product> selByPage(int pageNo ,int pageSize){

        PageHelper<Product> productPageHelper=new PageHelper<>();
        productPageHelper.setPageNo(pageNo);
        productPageHelper.setPageSize(pageSize);
        List<Product> list= this.productService.selectProductByPage(productPageHelper);
        productPageHelper.setData(list);
        int sumCount=productService.selectCount();
        int pageCount = sumCount % pageSize == 0 ? sumCount / pageSize : sumCount / pageSize + 1;
        productPageHelper.setPageCount(pageCount);
        return productPageHelper;

    }
}
