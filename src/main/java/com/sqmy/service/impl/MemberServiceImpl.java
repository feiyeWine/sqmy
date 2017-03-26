package com.sqmy.service.impl;

import com.sqmy.dao.CppccMemberMapper;
import com.sqmy.model.CppccMember;
import com.sqmy.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private CppccMemberMapper cppccMemberMapper;
    @Override
    public List<CppccMember> getMembers() {

        return cppccMemberMapper.getAllMembers();
    }

    @Override
    public void modifyMember(CppccMember cppccMember) {
        cppccMemberMapper.updateByPrimaryKeySelective(cppccMember);
    }

    @Override
    public void deleteMember(int id) {
        cppccMemberMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void addMember(CppccMember cppccMember) {
        cppccMemberMapper.insertSelective(cppccMember);
    }
}
