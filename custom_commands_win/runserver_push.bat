@echo off

REM Add all files to the commit
git add .

REM Commit the changes with the user-provided commit message
set date_time=%date% %time%
git commit -m "Pushed from windows at %date_time%"

REM Push the changes to the remote repository
git push