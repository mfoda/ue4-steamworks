REM Wrap both main and shipping binaries
setlocal

set username=myusername 
set password="mypassword"
set appid=400
set drm_flags=0
set title=game_title
set exe1=%~dp0%title%\%title%.exe
set exe2=%~dp0%title%\%title%\Binaries\Win64\%title%-Win64-Shipping.exe

steamcmd.exe ^
    +login %username% %password% ^
    +drm_wrap %appid% ^
    %exe1% ^
    %exe1% ^
    drmtoolp %drm_flags% ^
    +drm_wrap %appid% ^
    %exe2% ^
    %exe2% ^
    drmtoolp %drm_flags% ^
    +quit
    
endlocal