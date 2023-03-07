all: app db test 
app:
	docker build . -t media-wiki -f application/Dockerfile
db:
	docker build . -t media-wiki-db -f database/Dockerfile
test:
	docker run --name mariadb -v /data:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secret-pw -e MYSQL_USER=wiki -e MYSQL_PASSWORD="wikidatabaset" -d mariadb:latest
deploy:
	
