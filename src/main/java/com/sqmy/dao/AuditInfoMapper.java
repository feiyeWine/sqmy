package com.sqmy.dao;

import com.sqmy.model.AuditInfo;

public interface AuditInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AuditInfo record);

    int insertSelective(AuditInfo record);

    AuditInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AuditInfo record);

    int updateByPrimaryKeyWithBLOBs(AuditInfo record);

    int updateByPrimaryKey(AuditInfo record);
}