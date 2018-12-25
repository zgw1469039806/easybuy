package com.bdqn.controller;

import com.bdqn.service.UserService;
import com.bdqn.service.impl.UserServiceImpl;
import com.bdqn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/reg")
    public String register(@RequestParam("loginName") String loginName,
                           @RequestParam("userName") String userName,
                           @RequestParam("password") String password,
                           @RequestParam("identityCode")String identityCode,
                           @RequestParam("email")String email,
                           @RequestParam("mobile") String mobile){

        User user = new User();
        user.setLoginName(loginName);
        user.setUserName(userName);
        user.setPassword(password);
        user.setSex(1);
        user.setIdentityCode(identityCode);
        user.setEmail(email);
        user.setMobile(mobile);

        Integer reg = userService.register(user);
        if(reg>0){
            System.out.println("-----"+reg);
            return "login";
        }
        return "register";
    }

    @RequestMapping("/log")
    public String login(@RequestParam("loginName") String loginName,
                        @RequestParam("password") String password){
        List<User> userList = userService.login(loginName,password);
        if(userList.size()>0){
            return "redirect:/queProduct";
        }else {
            return "login";
        }
    }
}
