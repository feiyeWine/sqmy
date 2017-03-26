package com.sqmy.dao;

import com.sqmy.model.EditInfo;

public interface EditInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(EditInfo record);

    int insertSelective(EditInfo record);

    EditInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EditInfo record);

    int updateByPrimaryKeyWithBLOBs(EditInfo record);

    int updateByPrimaryKey(EditInfo record);
}