package com.lunatic.batis_model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_usergroup")
public class SysUsergroup extends BaseEntity {

    /**
     * 用户组名称
     */
    @Column(name = "vc_user_groupname")
    private String userGroupname;

    /**
     * 父用户组id
     */
    private Integer pid;


    /**
     * 获取用户组名称
     *
     * @return vc_user_groupname - 用户组名称
     */
    public String getUserGroupname() {
        return userGroupname;
    }

    /**
     * 设置用户组名称
     *
     * @param userGroupname 用户组名称
     */
    public void setUserGroupname(String userGroupname) {
        this.userGroupname = userGroupname;
    }

    /**
     * 获取父用户组id
     *
     * @return pid - 父用户组id
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * 设置父用户组id
     *
     * @param pid 父用户组id
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

}