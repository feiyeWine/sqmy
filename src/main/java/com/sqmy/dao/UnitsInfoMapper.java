package com.sqmy.dao;

import com.sqmy.model.UnitsInfo;

import java.util.List;

public interface UnitsInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UnitsInfo record);

    int insertSelective(UnitsInfo record);

    UnitsInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UnitsInfo record);

    int updateByPrimaryKey(UnitsInfo record);

    /**
     * 自己添加mapper
     */
    List<UnitsInfo> selectAllUnits();
}