@echo off
echo Reload NGINX
%cd%\usr\local\nginx -c %cd%\etc\nginx\nginx.conf -s reload 
echo NGINX Reloaded.