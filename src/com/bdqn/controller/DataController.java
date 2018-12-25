package com.bdqn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class DataController {

   @RequestMapping("/datatest")
    public String DateTest(Date date, HttpServletRequest request)
    {
        System.out.println("date = [" + date + "]");
        return "demo";
    }

}
