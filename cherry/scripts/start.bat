@ECHO OFF
cd ../..
echo %cd%
echo Hi that is a Cherry toolbox starting!!! 
REM echo Starting DNS server.
REM %cd%\usr\local\rhc %cd%\usr\local\maradns\maradns -f %cd%\etc\maradns\mararc

REM for /f "tokens=2" %%a in ('tasklist^|find /i "maradns"') do (set pid=%%a)
REM echo %pid% > %cd%\var\run\maradns.pid
REM echo DNS server is started.
echo ----------------------
echo Starting NGINX http server.
%cd%\usr\local\rhc %cd%\usr\local\nginx -c %cd%\etc\nginx\nginx.conf
echo  NGINX http server started.
echo ----------------------
echo Starting PHP-CGI  server.
%cd%\usr\local\rhc %cd%\usr\local\php7\php-cgi.exe -b 127.0.0.1:9000
echo  PHP-CGI  server started.
echo ----------------------
echo Starting mysql server 
%cd%\usr\local\rhc %cd%\usr\local\mariadb\bin\mysqld 
echo  mysql server Started

cd cherry\scripts
set /p delBuild= Press key for out [y/n]?:    