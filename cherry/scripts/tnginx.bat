@ECHO OFF
cd ../..
echo %cd%
%cd%\usr\local\nginx  -t -c %cd%\etc\nginx\nginx.conf
cd cherry/scripts