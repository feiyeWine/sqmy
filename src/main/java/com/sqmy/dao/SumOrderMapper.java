package com.sqmy.dao;

import com.sqmy.model.SumOrder;

import java.util.List;

/**
 * Created by YR on 2016/4/20.
 */
public interface SumOrderMapper {
    List<SumOrder> getSumUnits();
    List<SumOrder> getSumMembers();
}
