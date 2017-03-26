package com.sqmy.dao;

import com.sqmy.model.AccountsInfo;

import java.util.List;

public interface AccountsInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AccountsInfo record);

    int insertSelective(AccountsInfo record);

    AccountsInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AccountsInfo record);

    int updateByPrimaryKey(AccountsInfo record);

    /**
     * 自己添加mapper
     */
    List<AccountsInfo> getAllAccounts();
}