@echo off

rem pull latest updates
cd C:\Users\%username%\cucu_cupboard_repo

git pull 2>nul
if %errorlevel% == 0 (
  echo Git pull successful.
) else (
  echo Git pull failed with error code %errorlevel%. Please check your remote repository connection or maybe you don't have the admin access to this project repository.
)