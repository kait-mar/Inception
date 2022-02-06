build:
	docker-compose -f ./src/docker-compose.yml build $(c)
up:
	docker-compose -f ./src/docker-compose.yml up --build -d $(c)
down:
	docker-compose -f ./src/docker-compose.yml down --volumes
clean:
	docker rm -f $(docker ps -a -q) && docker rmi -f $(docker images -a -q) &&\
docker volume rm $(docker volume ls -q) && sudo rm -rf /home/kait-mar/data/wordpress/* &&\
sudo rm -rf /home/kait-mar/data/mariadb/*