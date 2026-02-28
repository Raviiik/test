@echo off
cd /d %~dp0

echo Assembling the Hugo site...
hugo

echo Done! The files are in the public folder.
pause