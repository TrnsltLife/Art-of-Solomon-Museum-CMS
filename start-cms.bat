@echo off
cd /d %~dp0

echo Starting Decap local backend...
start "Decap Backend" cmd /k npx decap-server

timeout /t 2 > nul

echo Starting local static server...
start "Static Server" cmd /k npx serve . -l 8000

timeout /t 2 > nul

echo Opening CMS in browser...
start http://localhost:8000/admin/

echo.
echo CMS is running.
echo Close the two terminal windows to stop the servers.