package com.sqmy.dao;

import com.sqmy.model.ComplaintsReport;

import java.util.List;

public interface ComplaintsReportMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ComplaintsReport record);

    int insertSelective(ComplaintsReport record);

    ComplaintsReport selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ComplaintsReport record);

    int updateByPrimaryKeyWithBLOBs(ComplaintsReport record);

    int updateByPrimaryKey(ComplaintsReport record);

    //自己写的mapper
    List<ComplaintsReport> getAllComplaints();
}