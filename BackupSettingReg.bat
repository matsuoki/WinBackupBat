@echo off
echo --------------------------------
echo 各種設定ファイルの出力を行います
echo --------------------------------

set today=%date:~-10,4%%date:~-5,2%%date:~-2,2%
set todaydir=BackupReg_%today%

mkdir "%todaydir%" 


rem =================================================================================
echo Putty
reg export HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\Sessions "%todaydir%\Putty.reg"

rem =================================================================================
echo Hidemaru
reg export HKEY_CURRENT_USER\Software\Hidemaruo\Hidemaru "%todaydir%\Hidemaru.reg"

rem =================================================================================
echo FFFTP
reg export HKEY_CURRENT_USER\Software\sota\FFFTP "%todaydir%\FFFTP.reg"

rem =================================================================================
echo system DSN
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBC.INI"  "%todaydir%\ODBC_SystemDSN.reg"

rem =================================================================================
echo pgadmin3
reg export "HKEY_CURRENT_USER\Software\pgAdmin III" "%todaydir%\pgAdmin3.reg"

rem =================================================================================
echo pgadmin4
reg export "HKEY_CURRENT_USER\Software\pgadmin\pgadmin4" "%todaydir%\pgAdmin4.reg"

rem =================================================================================
echo pgadmin4
reg export "HKEY_CURRENT_USER\Software\E.T." "%todaydir%\etsoft.reg"

rem =================================================================================
pause
