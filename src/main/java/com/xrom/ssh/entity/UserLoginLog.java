package com.xrom.ssh.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class UserLoginLog {
    @Id
    @GeneratedValue
    private Long login_id;
    private Long user_id;
    private String login_time;
    private String login_ip;
    private String user_name;

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Long getLogin_id() {
        return login_id;
    }

    public void setLogin_id(Long login_id) {
        this.login_id = login_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getLogin_time() {
        return login_time;
    }

    public void setLogin_time(String login_time) {
        this.login_time = login_time;
    }

    public String getLogin_ip() {
        return login_ip;
    }

    public void setLogin_ip(String login_ip) {
        this.login_ip = login_ip;
    }

    @Override
    public String toString() {
        return "UserLoginLog{" +
                "login_id=" + login_id +
                ", user_id=" + user_id +
                ", login_time=" + login_time +
                ", login_ip='" + login_ip + '\'' +
                '}';
    }
}
