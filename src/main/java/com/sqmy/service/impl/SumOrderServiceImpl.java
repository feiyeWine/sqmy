package com.sqmy.service.impl;

import com.sqmy.dao.SumOrderMapper;
import com.sqmy.model.SumOrder;
import com.sqmy.service.SumOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YR on 2016/4/20.
 */
@Service
public class SumOrderServiceImpl implements SumOrderService {
    @Autowired
    private SumOrderMapper sumOrderMapper;

    @Override
    public List<SumOrder> getSumOrderUnits() {
        return sumOrderMapper.getSumUnits();
    }

    @Override
    public List<SumOrder> getSumOrderMembers() {
        return sumOrderMapper.getSumMembers();
    }
}
