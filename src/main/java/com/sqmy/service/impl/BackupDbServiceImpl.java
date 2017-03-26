package com.sqmy.service.impl;

import com.sqmy.dao.BackupDbMapper;
import com.sqmy.model.BackupDb;
import com.sqmy.service.BackupDbService;
import com.sqmy.untils.TimeFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by YR on 2016/4/18.
 */
@Service
public class BackupDbServiceImpl implements BackupDbService {

    @Autowired
    private BackupDbMapper backupDbMapper;
    @Override
    public boolean backupDb() {
        BackupDb backupDb = new BackupDb();
        try {
            Process process = Runtime.getRuntime().exec("E:\\JAVA\\IntelliJ_IDEA\\mymaven\\sqmy\\src\\main\\webapp\\jsp\\databases\\backupDb.bat");
            Date date = new Date();
            backupDb.setName("sqmy_"+TimeFormatUtil.nowTimeFormat(date));
            backupDb.setCreateTime(date);
            backupDbMapper.insertSelective(backupDb);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<BackupDb> getAllbackupDb() {

        return backupDbMapper.getAllBackupDb();
    }
}
