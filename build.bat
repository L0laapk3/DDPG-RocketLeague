echo off
cls
mkdir build
cd build
cmake --build . --config Release
if %ERRORLEVEL% NEQ 0 GOTO ERROR
cd ..
py bakkes_patchplugin.py
exit

:ERROR
pause
exit