@echo off

cd /d "%~dp0"

set /p MESSAGE=enter commit message: 

git add .
git commit -m "%MESSAGE%"
git push

pause