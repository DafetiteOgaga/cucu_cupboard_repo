@echo off

echo ...................................................1
echo Pulling latest updates ...
call runserver_pull.bat

echo ...................................................2
echo Activating virtual environment ...
call runserver_activate_venv.bat

echo ...................................................3
echo Running runserver_install_dependencies ...
call runserver_install_dependencies.bat

echo ...................................................4
echo Copying updated scripts ...
call runserer_copy.bat

echo ...................................................5
echo ............ Starting local server ............
call runserver_start_local_server.bat
echo ...............................................................
