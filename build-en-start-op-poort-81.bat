cd ./dw2ns

echo Building Docker image...
docker build -t balls .

echo Starting Docker container...
docker run -d -p 81:80 --name anotherball balls

echo Docker container started on http://localhost:81/