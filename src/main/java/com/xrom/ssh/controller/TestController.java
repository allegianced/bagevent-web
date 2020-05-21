package com.xrom.ssh.controller;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by XRom
 * On 11/16/2017.11:59 PM
 */
@Controller
public class TestController {

    @Autowired(required=true)
    private PersonService personService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(User user, Model model) {
        if(personService.addUser(user)){
            model.addAttribute("msg","注册成功，请登录！");
            return "login";
        }else{
            model.addAttribute("msg","注册失败，请重新注册！");
            return "register";
        }
    }

    @RequestMapping(value = "/loginto", method = RequestMethod.POST)
    public String loginUser(User user, Model model) {
        if(personService.login(user)){
            model.addAttribute("user_name",user.getUser_name());
            model.addAttribute("userlogList",personService.findAll(user));
            return "LoginLog";
        }else{
            model.addAttribute("msg","登录失败，请重新登录！");
            return "login";
        }

    }

    @RequestMapping(value = "/tologin", method = RequestMethod.GET)
    public String tologin() {
        return "login";
    }

    @RequestMapping(value = "/toregister", method = RequestMethod.GET)
    public String toregister() {
        return "register";
    }

}
