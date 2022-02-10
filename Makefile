build:
	docker-compose -f ./src/docker-compose.yml build $(c)
up:
	docker-compose -f ./src/docker-compose.yml up -d $(c)
down:
	docker-compose -f ./src/docker-compose.yml down
clean:
	docker rm -f $(docker ps -a -q)
	docker rmi -f $(docker images -a -q)
	docker volume rm $(docker volume ls -q)
	sudo rm -rf /home/kait-mar/data/wordpress/*
	sudo rm -rf /home/kait-mar/data/mariadb/*
#docker stop $(docker ps -qa); docker rm $(docker ps -qa);
#docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q);
#docker network rm $(docker network ls -q) 2>/dev/null