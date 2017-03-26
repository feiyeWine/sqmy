package com.sqmy.dao;

import com.sqmy.model.ManagerInfo;
import org.apache.ibatis.annotations.Param;

public interface ManagerInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ManagerInfo record);

    int insertSelective(ManagerInfo record);

    ManagerInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ManagerInfo record);

    int updateByPrimaryKey(ManagerInfo record);

    /**
     * 自己添加mapper
     */
    //根据账号查询信息
    ManagerInfo selectByAccount(@Param("account") String account);
}