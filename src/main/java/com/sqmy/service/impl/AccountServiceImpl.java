package com.sqmy.service.impl;

import com.sqmy.dao.AccountsInfoMapper;
import com.sqmy.model.AccountsInfo;
import com.sqmy.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */

@Service
public class AccountServiceImpl implements AccountService{
    @Autowired
    AccountsInfoMapper accountsInfoMapper;

    @Override
    public List<AccountsInfo> getAccounts() {
        return accountsInfoMapper.getAllAccounts();
    }

    @Override
    public void updateAccount(AccountsInfo accountsInfo) {
        accountsInfoMapper.updateByPrimaryKeySelective(accountsInfo);
    }

    @Override
    public void deleteAccount(int id) {
        accountsInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void addAccount(AccountsInfo accountsInfo) {
        accountsInfoMapper.insertSelective(accountsInfo);
    }
}
