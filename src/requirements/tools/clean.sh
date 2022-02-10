docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker volume rm $(docker volume ls -q)
sudo rm -rf /home/kait-mar/data/wordpress/*
sudo rm -rf /home/kait-mar/data/mariadb/*