all: app db test-mariadb deploy
app:
    echo "building docker image for media wiki"
	docker build . -t media-wiki -f application/Dockerfile
	echo "logging in to docker registry"
	docker login -u sumeshkanayi -p ${DOCKER_LOGIN_PASSWORD}
	echo "tagging docker images"
	docker tag mediawiki sumeshkanayi/media-wiki:dev
	echo "pushing docker image"
	docker push sumeshkanayi/media-wiki
db:
	docker build . -t media-wiki-db -f database/Dockerfile
test-mariadb:
	docker run --name mariadb -v /data:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secret-pw -e MYSQL_USER=wiki -e MYSQL_PASSWORD="wikidatabaset" -d mariadb:latest
deploy:
  kubectl kustomize ./overlay/dev


