package com.sqmy.service.impl;

import com.sqmy.dao.ManagerInfoMapper;
import com.sqmy.model.ManagerInfo;
import com.sqmy.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by YR on 2016/4/15.
 */

@Service
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    private ManagerInfoMapper managerInfoMapper;

    @Override
    public ManagerInfo getManagerInfo(String account) {
        ManagerInfo managerInfo = managerInfoMapper.selectByAccount(account);
        return managerInfo;
    }

    @Override
    public int updateManagerInfo(ManagerInfo managerInfo) {

       int result = managerInfoMapper.updateByPrimaryKeySelective(managerInfo);
        return result ;
    }
}
