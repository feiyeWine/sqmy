package com.sqmy.dao;

import com.sqmy.model.SubmitInfo;
import com.sqmy.model.SubmitInfoWithBLOBs;

public interface SubmitInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SubmitInfoWithBLOBs record);

    int insertSelective(SubmitInfoWithBLOBs record);

    SubmitInfoWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SubmitInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(SubmitInfoWithBLOBs record);

    int updateByPrimaryKey(SubmitInfo record);
}