package com.sqmy.service.impl;

import com.sqmy.dao.UnitsInfoMapper;
import com.sqmy.model.UnitsInfo;
import com.sqmy.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by YR on 2016/4/17.
 */

@Service
public class UnitServiceImpl implements UnitService{
    @Autowired
    UnitsInfoMapper unitsInfoMapper;
    @Override
    public List<UnitsInfo> getUnits() {
        List<UnitsInfo> unitsInfos = new ArrayList<UnitsInfo>();
         unitsInfos = unitsInfoMapper.selectAllUnits();
        return unitsInfos;
    }

    @Override
    public void updateUnit(UnitsInfo unitsInfo) {
        unitsInfoMapper.updateByPrimaryKeySelective(unitsInfo);
    }

    @Override
    public void deleteUnit(int id) {
        unitsInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void addUnit(UnitsInfo unitsInfo) {
        unitsInfoMapper.insertSelective(unitsInfo);
    }
}
