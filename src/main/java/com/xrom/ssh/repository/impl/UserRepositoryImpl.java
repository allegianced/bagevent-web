package com.xrom.ssh.repository.impl;

import com.xrom.ssh.entity.User;
import com.xrom.ssh.entity.UserLoginLog;
import com.xrom.ssh.repository.UserRepository;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


/**
 * 实现接口方法
 */
@Repository
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private SessionFactory sessionFactory;
    public final static String md5key = "Ms2";

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    //查询所有登录记录
    @Override
    public List<UserLoginLog> findAll(User user) {
        String hql = "from UserLoginLog where user_name =:user_name";
        List<UserLoginLog> list = getCurrentSession().createQuery(hql).setString("user_name", user.getUser_name()).list();
        return list;
    }


    //注册
    @Override
    public boolean save(User user) {
        String hql = "FROM User WHERE user_name = :username";
        List<User> list = getCurrentSession().createQuery(hql).setString("username", user.getUser_name()).list();
        if (user != null && !"".equals(user) && list.size() > 0) {      //如果表中已经有相同的用户名
            return false;
        } else {
            //md5加密
            String encodeStr = DigestUtils.md5Hex(user.getPassword() + md5key);
            user.setSalt(md5key);
            user.setPassword(encodeStr);
            //注册日期
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            user.setCrate_time(df.format(new Date()));
            getCurrentSession().save(user);
            return true;
        }

    }

    //登录
    @Override
    public boolean login(User user) {
        boolean flag = false;
        //md5加密
        String encodeStr = DigestUtils.md5Hex(user.getPassword() + md5key);
        String hql = "FROM User WHERE user_name = :username AND password = :password";
        List<User> list = getCurrentSession().createQuery(hql).setString("username", user.getUser_name()).setString("password", encodeStr).list();
        if (list.size() > 0) {
            flag = true;
            UserLoginLog ul = new UserLoginLog();
            User u = (User) list.get(0);
            ul.setUser_id(u.getUser_id());
            ul.setUser_name(u.getUser_name());
            ul.setLogin_ip("127.0.0.1");
            //登录日期
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            ul.setLogin_time(df.format(new Date()));
            getCurrentSession().save(ul);
        }
        return flag;
    }


}
