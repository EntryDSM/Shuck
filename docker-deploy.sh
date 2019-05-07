echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin registry.entrydsm.hs.kr:5000

docker build -t hubcodes/shuck .
docker tag hubcodes/shuck hubcodes/shuck:latest
docker push hubcodes/shuck:latest
