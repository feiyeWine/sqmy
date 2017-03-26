package com.sqmy.service.impl;

import com.sqmy.dao.ComplaintsReportMapper;
import com.sqmy.model.ComplaintsReport;
import com.sqmy.service.ComplaintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YR on 2016/4/19.
 */
@Service
public class ComplaintServiceImpl implements ComplaintService{
    @Autowired
    private ComplaintsReportMapper reportMapper;
    @Override
    public List<ComplaintsReport> getAllComplaints() {
        return reportMapper.getAllComplaints();
    }

    @Override
    public void insertComplaint(ComplaintsReport complaintsReport) {
        reportMapper.insertSelective(complaintsReport);
    }
}
