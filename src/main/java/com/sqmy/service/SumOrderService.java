package com.sqmy.service;

import com.sqmy.model.SumOrder;

import java.util.List;

/**
 * Created by YR on 2016/4/20.
 */
public interface SumOrderService {
    List<SumOrder> getSumOrderUnits();
    List<SumOrder> getSumOrderMembers();
}
