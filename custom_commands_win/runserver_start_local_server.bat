@echo off

cd C:\Users\%username%\cucu_cupboard_repo\cucu_cupboard_project

rem Starts the local server
echo Use CTRL + C to quit the server
echo ............................

rem python manage.py runserver

python manage.py runserver 2>nul
if %errorlevel% == 0 (
echo Local server.
) else (
echo Local server failed to start with error code %errorlevel%. Please check your project configuration and server logs.
)

rem Stops local server