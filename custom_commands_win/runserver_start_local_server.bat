@echo off

call name.bat

echo .
cd C:\Users\%username%\cucu_cupboard_repo\cucu_cupboard_project

rem Starts the local server
echo Use CTRL + C to quit the server (you may need to do this twice or thrice before it responds)
echo ............................
echo We rise by lifting other ...
echo ............................

rem python manage.py runserver

python manage.py runserver 2>nul
if %errorlevel% == 0 (
echo Local server.
) else (
echo Local server failed to start with error code %errorlevel%. Please check your project configuration and server logs.
)

rem Stops local server