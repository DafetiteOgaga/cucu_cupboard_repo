@echo off

call name.bat

set my_path_clone=C:\Users\%username%
cd %my_path_clone%

echo ...............................................
set /p token="Enter token(It's okay, if you don't have the token): "

if not "%token%"=="" (
    echo Cloning repository with token: %token% ...
    git clone https://%token%@github.com/DafetiteOgaga/cucu_cupboard_repo.git
	set token=
) else (
    echo Cloning repository without token ...
    git clone https://github.com/DafetiteOgaga/cucu_cupboard_repo.git
)

set custom_commands_win=%my_path_clone%\cucu_cupboard_repo\custom_commands_win

set xbin_windows=%my_path_clone%\xbin_windows

cd %my_path_clone%
if exist "%xbin_windows%" (
	echo variable path ok ...
) else (
    echo creating variable path ...
	mkdir %xbin_windows%
)

echo ...............................................
echo setting environmental variable ...
call set_env_var.bat
rem setx PATH "%PATH%";%xbin_windows%

cd %xbin_windows%

xcopy %custom_commands_win% . /e /y /d
