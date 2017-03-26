package com.sqmy.service;

import com.sqmy.model.UnitsInfo;

import java.util.List;

/**
 * Created by YR on 2016/4/17.
 */
public interface UnitService {
    List<UnitsInfo> getUnits();
    void updateUnit(UnitsInfo unitsInfo);
    void deleteUnit(int id);
    void addUnit(UnitsInfo unitsInfo);
}
