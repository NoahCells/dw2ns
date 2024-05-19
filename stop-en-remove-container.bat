@echo off
setlocal

set CONTAINER_NAME=apache-httpd-container

cd /d "%~dp0"

echo Stopping Docker container...
docker stop %CONTAINER_NAME%

echo Removing Docker container...
docker rm %CONTAINER_NAME%

echo Docker container stopped and removed.
endlocal
