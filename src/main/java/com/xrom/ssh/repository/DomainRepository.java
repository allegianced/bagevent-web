package com.xrom.ssh.repository;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;

import java.io.Serializable;
import java.util.List;

/**
 * 这个接口定义一些十分通用的方法
 * Created by XRom
 * On 11/16/2017.11:52 PM
 */
public interface DomainRepository {

    boolean save(User user);
    boolean login(User user);
    List<UserLoginLog> findAll(User user);

}