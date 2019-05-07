echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin registry.entrydsm.hs.kr:5000

docker build -t entrydsm/shuck .
docker tag entrydsm/shuck entrydsm/shuck:latest
docker push entrydsm/shuck:latest
