package com.bdqn.service.impl;

import com.bdqn.entity.User;
import com.bdqn.mapper.UserMapper;
import com.bdqn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public int register(User user) {
        return userMapper.register(user);
    }

    @Override
    public List<User> login(String loginName, String password){
        return userMapper.login(loginName,password);
    }
}
