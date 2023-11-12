@echo off

rem pull latest updates
echo .................... Pulling latest updates ....................
git pull
echo ...............................................................

rem Starts the local server
echo .................... Starting local server ....................
echo Use CTRL + C to quit the server
echo ...............................................................

rem cd C:\Users\pc\

python manage.py runserver

rem Stops local server
echo .................... It will terminate anyways ................