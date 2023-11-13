@echo off

rem pull latest updates
echo Pulling latest updates ...
rem git pull

cd C:\Users\pc\cucu_cupboard_repo

git pull 2>nul
if %errorlevel% == 0 (
  echo Git pull successful.
) else (
  echo Git pull failed with error code %errorlevel%. Please check your remote repository connection or maybe you don't have the admin access to this project repository.
)