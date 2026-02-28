@echo off
chcp 65001 >nul
title Hugo Project Creator

echo ===============================
echo        Hugo Project Setup
echo ===============================
echo.

set /p PROJECT_NAME=Enter project name: 
if "%PROJECT_NAME%"=="" (
    echo Project name cannot be empty.
    pause
    exit
)

set /p THEME_URL=Enter GitHub theme URL: 
if "%THEME_URL%"=="" (
    echo Theme URL cannot be empty.
    pause
    exit
)

set /p THEME_NAME=Enter theme folder name (example: ananke): 
if "%THEME_NAME%"=="" (
    echo Theme name cannot be empty.
    pause
    exit
)

echo.
echo Creating Hugo site...
hugo new site %PROJECT_NAME%

if errorlevel 1 (
    echo Failed to create Hugo site.
    pause
    exit
)

cd %PROJECT_NAME%

echo Initializing Git...
git init

echo Adding theme as submodule...
git submodule add %THEME_URL% themes/%THEME_NAME%

if errorlevel 1 (
    echo Failed to add theme.
    pause
    exit
)

echo.
echo Configuring theme...

if exist hugo.toml (
    echo theme = "%THEME_NAME%" >> hugo.toml
) else (
    echo theme = "%THEME_NAME%" >> config.toml
)

echo.
echo ===============================
echo   Project successfully created!
echo ===============================
echo.
echo Next steps:
echo cd %PROJECT_NAME%
echo hugo server
echo.
pause