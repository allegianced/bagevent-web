package com.xrom.ssh.service.impl;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;
import com.xrom.ssh.repository.PersonRepository;
import com.xrom.ssh.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by XRom
 * On 11/16/2017.11:58 PM
 */
@Service
public class PersonServiceImpl implements PersonService {

    @Autowired(required = true)
    private PersonRepository personRepository;

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
