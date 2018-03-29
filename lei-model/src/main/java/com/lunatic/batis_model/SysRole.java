package com.lunatic.batis_model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_role")
public class SysRole extends BaseEntity{

    /**
     * 角色名
     */
    @Column(name = "vc_role_name")
    private String roleName;


    /**
     * 获取角色名
     *
     * @return vc_role_name - 角色名
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * 设置角色名
     *
     * @param roleName 角色名
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

}