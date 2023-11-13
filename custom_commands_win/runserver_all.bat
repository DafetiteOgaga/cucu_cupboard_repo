@echo off

echo ...................................................1
echo Running runserver_pull...
call runserver_pull.bat
echo ...................................................1

echo ...................................................2
echo Running runserver_activate_venv...
call runserver_activate_venv.bat
echo ...................................................2

echo ...................................................3
echo Running runserver_install_dependencies...
call runserver_install_dependencies.bat
echo ...................................................3

echo ...................................................4
echo Running runserer_copy...
call runserer_copy.bat
echo ...................................................4

echo ...................................................5
echo Running runserver_start_local_server...
call runserver_start_local_server.bat
echo ...................................................5
echo ...............................................................
