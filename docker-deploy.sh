docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"

docker build -t hubcodes/shuck .
docker push hubcodes/shuck
