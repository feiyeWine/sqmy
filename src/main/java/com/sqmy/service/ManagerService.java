package com.sqmy.service;

import com.sqmy.model.ManagerInfo;

/**
 * Created by YR on 2016/4/14.
 */

public interface ManagerService {
    ManagerInfo getManagerInfo(String name);
    int updateManagerInfo(ManagerInfo managerInfo);
}
