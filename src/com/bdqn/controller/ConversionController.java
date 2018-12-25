package com.bdqn.controller;

import com.bdqn.conversion.DateConversion;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.util.Date;

@Controller
public class ConversionController {

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder)
    {
        System.out.println("注册日期类型");
        webDataBinder.registerCustomEditor(Date.class,new DateConversion());
    }


}
