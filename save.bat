@echo off
set /p MESSAGE=enter commit message: 

git add .
git commit -m "%MESSAGE%"
git push

pause