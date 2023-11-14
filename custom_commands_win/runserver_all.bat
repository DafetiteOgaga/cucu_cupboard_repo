@echo off

echo ...................................................0
echo Pulling latest updates ...
call runserver_pull.bat

echo ...................................................1
echo Pushing changes to remote ...
call runserver_push.bat

echo ...................................................2
echo Activating virtual environment ...
call runserver_activate_venv.bat

echo ...................................................3
echo Updating dependencies ...
call runserver_install_dependencies.bat

echo ...................................................4
echo Updating scripts ...
call runserer_copy.bat

echo ...................................................5
echo ............ Starting local server ............
call runserver_start_local_server.bat
echo ...............................................................
