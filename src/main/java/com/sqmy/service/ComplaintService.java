package com.sqmy.service;

import com.sqmy.model.ComplaintsReport;

import java.util.List;

/**
 * Created by YR on 2016/4/19.
 */
public interface ComplaintService {
   List<ComplaintsReport> getAllComplaints();
    void insertComplaint (ComplaintsReport complaintsReport);
}
