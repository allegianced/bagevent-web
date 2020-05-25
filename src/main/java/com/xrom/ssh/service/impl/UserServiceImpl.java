package com.xrom.ssh.service.impl;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;
import com.xrom.ssh.repository.UserRepository;
import com.xrom.ssh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 对方法进行封装，供Controler调用
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired(required = true)
    private UserRepository personRepository;

    @Override
    public boolean addUser(User user) {
        return personRepository.save(user);
    }

    @Override
    public boolean login(User user) {
        return personRepository.login(user);
    }

    @Override
    public List<UserLoginLog> findAll(User user) {
        return personRepository.findAll(user);
    }

}
