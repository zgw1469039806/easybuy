package com.bdqn.service;

import com.bdqn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * author：wen da
 * QQ：821685470
 * Date:2018-12-17
 * Time：8:18
 */
 public interface UserService {
    int register(User user); //注册

    List<User> login(@Param("loginName") String loginName,
                     @Param("password") String password); //登录
}
