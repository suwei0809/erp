package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.mapper.UserMapper;
import com.sw.erp.backstage.manage.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUser(User user) {
        return userMapper.getUser(user);
    }
}
