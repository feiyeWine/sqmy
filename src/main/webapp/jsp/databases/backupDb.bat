@echo off
set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%"
mysqldump  -u root -proot sqmy > E:\JAVA\IntelliJ_IDEA\mymaven\sqmy\src\main\webapp\jsp\databases\sqmy_%Ymd%.sql
@echo on