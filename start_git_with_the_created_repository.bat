@echo off
:: Set white text on black background
color 07

cd /d "%~dp0"

:: Set your GitHub repository URL here
set REPO_URL=https://github.com/Raviiik/test.git

echo Initializing git in the current folder...
git init

echo Adding all files...
git add .

echo Creating the first commit...
git commit -m "Initial commit"

echo Adding remote repository...
git remote add origin %REPO_URL%

echo Renaming branch to main...
git branch -M main

echo Pushing to GitHub...
git push -u origin main

echo Done! Folder is now connected to the repository.
pause