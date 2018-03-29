package com.lunatic.batis_model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_menu")
public class SysMenu extends BaseEntity{

    /**
     * 菜单名称
     */
    @Column(name = "vc_menuname")
    private String menuname;

    @Column(name = "vc_url")
    private String url;

    @Column(name = "fk_pid")
    private Integer fkPid;


    /**
     * 获取菜单名称
     *
     * @return vc_menuname - 菜单名称
     */
    public String getMenuname() {
        return menuname;
    }

    /**
     * 设置菜单名称
     *
     * @param menuname 菜单名称
     */
    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }

    /**
     * @return vc_url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return fk_pid
     */
    public Integer getFkPid() {
        return fkPid;
    }

    /**
     * @param fkPid
     */
    public void setFkPid(Integer fkPid) {
        this.fkPid = fkPid;
    }

}