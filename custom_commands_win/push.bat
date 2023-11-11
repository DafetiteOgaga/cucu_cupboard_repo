@echo off

REM Get the commit message from the user
SET /P RESP="Enter a commit message [[q] to abort] >>> "

REM Check if the commit message is empty or if the user wants to abort
IF NOT EXIST "%RESP%" (
    ECHO Commit message not found
    EXIT /B 1
) ELSE IF "%RESP%" == "q" (
    EXIT /B 0
)

REM Pull the latest changes from the remote repository
ECHO .....It's good to pull before pushing. So, I'm pulling........
git pull

REM Add all files to the commit
git add .

REM Commit the changes with the user-provided commit message
git commit -m "%RESP%"

REM Push the changes to the remote repository
git push