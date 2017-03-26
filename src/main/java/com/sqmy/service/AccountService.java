package com.sqmy.service;

import com.sqmy.model.AccountsInfo;

import java.util.List;

/**
 * Created by YR on 2016/4/17.
 */
public interface AccountService {
    List<AccountsInfo> getAccounts();
    void updateAccount(AccountsInfo accountsInfo);
    void deleteAccount(int id);
    void addAccount(AccountsInfo accountsInfo);
}
