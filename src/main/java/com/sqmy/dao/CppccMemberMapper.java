package com.sqmy.dao;

import com.sqmy.model.CppccMember;

import java.util.List;

public interface CppccMemberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CppccMember record);

    int insertSelective(CppccMember record);

    CppccMember selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CppccMember record);

    int updateByPrimaryKey(CppccMember record);

    /**
     * 自己添加 mapper
     */
    List<CppccMember> getAllMembers();
}