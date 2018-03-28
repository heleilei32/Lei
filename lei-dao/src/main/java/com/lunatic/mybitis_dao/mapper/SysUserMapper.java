package com.lunatic.mybitis_dao.mapper;

import com.lunatic.batis_model.SysUser;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface SysUserMapper extends Mapper<SysUser> {

    List<SysUser> selectAll();
}