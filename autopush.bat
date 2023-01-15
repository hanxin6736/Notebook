@echo off

:: get path
cd /d %~dp0
:: auto push
git init 
git add . 
 git commit -m "bat auto push:%date:~0,10%,%time:~0,8%" 
::  git commit -m "%commitMessage%" 
git push origin master
@echo complete,

SET daoTime=5
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo push complete , quit after %daoTime%s
if %daoTime%==0 (exit) else (goto dao)



