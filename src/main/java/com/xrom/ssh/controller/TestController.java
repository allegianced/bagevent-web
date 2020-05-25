package com.xrom.ssh.controller;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * controler
 */
@Controller
public class TestController {

    @Autowired(required = true)
    private UserService userService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(User user, Model model) {
        if (userService.addUser(user)) {
            model.addAttribute("msg", "注册成功，请登录！");
            return "login";
        } else {
            model.addAttribute("msg", "用户已存在，请重新注册！");
            return "register";
        }
    }

    @RequestMapping(value = "/loginto", method = RequestMethod.POST)
    public String loginUser(User user, Model model) {
        if(userService.login(user)){
            model.addAttribute("user_name",user.getUser_name());
            model.addAttribute("userlogList", userService.findAll(user));
            return "LoginLog";
        }else{
            model.addAttribute("msg","登录失败，请重新登录！");
            return "login";
        }
    }

/*    @RequestMapping(value = "/loginto", method = RequestMethod.POST)
    @ResponseBody
    public Object loginUser(@RequestBody User user) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (userService.login(user)) {
            map.put("user_name", user.getUser_name());
            map.put("userlogList", userService.findAll(user));
        } else {
            map.put("msg", "登录失败，请重新登录！");
        }
        return map;
    }*/


    @RequestMapping(value = "/tologin", method = RequestMethod.GET)
    public String tologin() {
        return "login";
    }

    @RequestMapping(value = "/toregister", method = RequestMethod.GET)
    public String toregister() {
        return "register";
    }

    @RequestMapping(value = "/toLoginLog", method = RequestMethod.GET)
    public String toLoginLog(User user, Model model) {
        model.addAttribute("user_name", user.getUser_name());
        model.addAttribute("userlogList", userService.findAll(user));
        return "LoginLog";
    }
}
