package com.sqmy.service;

import com.sqmy.model.CppccMember;

import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
public interface MemberService {
    List<CppccMember> getMembers();
    void modifyMember(CppccMember cppccMember);
    void deleteMember(int id);
    void addMember(CppccMember cppccMember);
}
