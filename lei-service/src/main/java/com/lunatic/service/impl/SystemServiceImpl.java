package com.lunatic.service.impl;

import com.lunatic.batis_model.SysUser;
import com.lunatic.mybitis_dao.mapper.SysUserMapper;
import com.lunatic.service.SystemService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SystemServiceImpl implements SystemService {
    @Autowired
    SysUserMapper sysUserMapper;

    public int addSystemUser(SysUser sysUser){
        int insert = sysUserMapper.insert(sysUser);
        return insert;
    }


}
