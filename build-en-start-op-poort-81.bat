@echo off
setlocal

set CONTAINER_NAME=apache-httpd-container
set IMAGE_NAME=apache-httpd-image
set PORT=81

cd /dw2ns

echo Building Docker image...
docker build -t %IMAGE_NAME% .

echo Starting Docker container...
docker run -d -p %PORT%:80 --name %CONTAINER_NAME% %IMAGE_NAME%

echo Docker container started on http://localhost:%PORT%/
endlocal
