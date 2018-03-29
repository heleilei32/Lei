package com.lunatic.service;

import com.lunatic.batis_model.SysUser;
import com.lunatic.pojo.Result;

/**
 * 系统功能service 权限控制 等等
 */
public interface SystemService {
    public int addSystemUser(SysUser sysUser);

    Result getAllUsers();
}
