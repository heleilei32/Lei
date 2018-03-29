package com.lunatic.batis_model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_auth")
public class SysAuth extends BaseEntity{

    /**
     * 权限名称
     */
    @Column(name = "vc_authname")
    private String authname;

    /**
     * 获取权限名称
     *
     * @return vc_authname - 权限名称
     */
    public String getAuthname() {
        return authname;
    }

    /**
     * 设置权限名称
     *
     * @param authname 权限名称
     */
    public void setAuthname(String authname) {
        this.authname = authname;
    }


}