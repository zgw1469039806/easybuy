package com.bdqn.mapper;

import com.bdqn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int register(User user); //注册

    List<User> login(@Param("loginName") String loginName,
                     @Param("password") String password); //登录
}
