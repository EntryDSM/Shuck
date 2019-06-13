echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin registry.entrydsm.hs.kr

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')
docker build -t registry.entrydsm.hs.kr/shuck:${PACKAGE_VERSION} .
docker tag registry.entrydsm.hs.kr/shuck:${PACKAGE_VERSION} registry.entrydsm.hs.kr/shuck:latest

docker push registry.entrydsm.hs.kr/shuck:${PACKAGE_VERSION} 
docker push registry.entrydsm.hs.kr/shuck:latest

exit
