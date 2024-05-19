@echo off
setlocal

cd /dw2ns

echo Stopping Docker container...
docker stop anotherball

echo Removing Docker container...
docker rm anotherball

echo Docker container stopped and removed.
endlocal
