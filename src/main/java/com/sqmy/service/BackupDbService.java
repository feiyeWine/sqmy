package com.sqmy.service;

import com.sqmy.model.BackupDb;

import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
public interface BackupDbService {
    boolean backupDb();
    List<BackupDb> getAllbackupDb();
}
