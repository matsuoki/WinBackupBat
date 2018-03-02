@echo off
echo --------------------------------
echo 各種設定ファイルのコピーを行います
echo --------------------------------

set today=%date:~-10,4%%date:~-5,2%%date:~-2,2%
set todaydir=BackupFiles_%today%
mkdir "%todaydir%" 

rem =================================================================================
echo pgadmin3
robocopy %appdata%\postgresql  "%todaydir%\pgadmin3"

rem =================================================================================
echo pgadmin4
robocopy %appdata%\pgAdmin "%todaydir%\pgadmin4"

rem =================================================================================
echo SQLDeveloper
robocopy "%appdata%\SQL Developer" "%todaydir%\SQLDeveloper"


rem =================================================================================
echo OfficeTemplates
robocopy "%appdata%\Microsoft\Templates" "%todaydir%\OfficeTemplates"

rem =================================================================================
echo AtokDictionary
robocopy "C:\Program Files\JustSystems\ATOK\DRT" "%todaydir%\ATOKDict"

rem =================================================================================
echo Chrome
robocopy "%LocalAppData%\Google\Chrome\User Data\Default" "%todaydir%\Chrome" Bookmarks

pause
