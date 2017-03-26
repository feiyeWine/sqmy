package com.sqmy.dao;

import com.sqmy.model.BackupDb;

import java.util.List;

public interface BackupDbMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BackupDb record);

    int insertSelective(BackupDb record);

    BackupDb selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BackupDb record);

    int updateByPrimaryKey(BackupDb record);

    //自己mapper
    List<BackupDb> getAllBackupDb();
}