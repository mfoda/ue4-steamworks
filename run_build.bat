setlocal

set username=myusername
set password="mypassword"
set script_path=app_xxxxxxx.vdf
 
steamcmd.exe ^
    +login %username% %password% ^
    +run_app_build %~dp0%script_path% ^
    +quit
    
endlocal
