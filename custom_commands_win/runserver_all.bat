@echo off

rem pull latest updates
echo .................... Pulling latest updates ....................
rem git pull

cd C:\Users\pc\cucu_cupboard_repo

git pull 2>nul
if %errorlevel% == 0 (
  echo Git pull successful.
) else (
  echo Git pull failed with error code %errorlevel%. Please check your remote repository connection or maybe you don't have the admin access to this project repository.
)

echo ...............................................................

rem Starts the local server
echo .................... Starting local server ....................
echo Use CTRL + C to quit the server
echo ...............................................................

cd C:\Users\pc\cucu_cupboard_repo\cucu_cupboard_venv_def_win\Scripts

call activate

xcopy C:\Users\pc\cucu_cupboard_repo\custom_commands_win C:\Users\pc\xbin_windows /e

cd C:\Users\pc\cucu_cupboard_repo

pip install -r requirements.txt

cd C:\Users\pc\cucu_cupboard_repo\cucu_cupboard_project

rem python manage.py runserver

python manage.py runserver 2>nul
if %errorlevel% == 0 (
echo Local server.
) else (
echo Local server failed to start with error code %errorlevel%. Please check your project configuration and server logs.
)

rem Stops local server
echo .................... It will terminate anyways ................