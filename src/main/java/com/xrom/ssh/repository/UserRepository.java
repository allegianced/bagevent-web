package com.xrom.ssh.repository;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;

import java.util.List;

/**
 * 这个接口定义一些十分通用的方法
 */
public interface UserRepository {
    boolean save(User user);

    boolean login(User user);

    List<UserLoginLog> findAll(User user);
}
