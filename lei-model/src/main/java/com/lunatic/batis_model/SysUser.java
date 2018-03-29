package com.lunatic.batis_model;

import javax.persistence.*;

@Table(name = "sys_user")
public class SysUser extends BaseEntity{

    /**
     * 用户名
     */
    @Column(name = "vc_username")
    private String username;

    /**
     * 密码
     */
    @Column(name = "vc_password")
    private String password;

    /**
     * 获取用户名
     *
     * @return vc_username - 用户名
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置用户名
     *
     * @param username 用户名
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取密码
     *
     * @return vc_password - 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置密码
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

}