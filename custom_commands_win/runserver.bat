@echo off

rem Starts the local server
echo .................... Starting local server ....................
echo Use CTRL + C to quit the server
echo ...............................................................

python manage.py runserver

rem Stops local server
echo .................... It will terminate anyways ................