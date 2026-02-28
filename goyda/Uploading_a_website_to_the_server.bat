@echo off
cd /d D:\locha\Documents\MarcdownTOhtmlFORbeget\mysite

hugo

set /p VERSION=<version.txt

echo Загружается версия: %VERSION%

"C:\Users\locha\AppData\Local\Programs\WinSCP\WinSCP.com" ^
  /command ^
  "option batch continue" ^
  "option confirm off" ^
  "open sftp://tatvavadi_automd:v!qnPK5JzzMW@tatvavadi.beget.tech/" ^
  "cd /home/t/tatvavadi/tatvavadi.ru/public_html/keyrup/AutoMD" ^
  "mkdir versions/%VERSION%" ^
  "put -delete public\* versions/%VERSION%/" ^
  "exit"

pause