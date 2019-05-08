echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin registry.entrydsm.hs.kr:5000

docker build -t registry.entrydsm.hs.kr:5000/shuck:0.0.1 .
docker tag registry.entrydsm.hs.kr:5000/shuck:0.0.1 registry.entrydsm.hs.kr:5000/shuck:latest

docker push registry.entrydsm.hs.kr:5000/shuck:0.0.1 
docker push registry.entrydsm.hs.kr:5000/shuck:latest

exit
