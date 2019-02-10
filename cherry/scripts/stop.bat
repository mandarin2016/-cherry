@echo off
taskkill /f /im maradns.exe
taskkill /f /im nginx.exe
taskkill /f /im php-cgi.exe
taskkill /f /im mysqld.exe
set /p delBuild= Press key for out [y/n]?:   