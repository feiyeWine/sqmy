package com.sqmy.dao;

import com.sqmy.model.TbScore;

public interface TbScoreMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbScore record);

    int insertSelective(TbScore record);

    TbScore selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbScore record);

    int updateByPrimaryKey(TbScore record);
}