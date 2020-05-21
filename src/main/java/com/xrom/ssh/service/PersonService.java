package com.xrom.ssh.service;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;

import java.util.List;

/**
 * Created by XRom
 * On 11/16/2017.11:57 PM
 */
public interface PersonService {
    //注册新用户
    boolean addUser(User user);
    //登录
    boolean login(User user);
    //查询某用户的登录记录
    List<UserLoginLog> findAll(User user);

}
