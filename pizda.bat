@echo off
title БЛОКИРОВКА
taskkill /f /im explorer.exe >nul
:loop
cls
echo.
echo   ====================================
echo        PIZDA RULYAM
echo     
echo   ====================================
echo.
set /p key=Введите пароль: 
if "%key%"=="7777" goto unlock
echo Неверно!
timeout /t 1 /nobreak >nul
goto loop
:unlock
start explorer.exe
echo Доступ открыт.
pause
exit