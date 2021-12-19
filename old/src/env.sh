docker-machine start #start the docker virtual machine
docker-machine env #get the environment for docker
eval "$(docker-machine env default)" #set the environment variables




   56  docker
   57  docker exec
   58  pwd
   59  docker build -t my_container
   60  docker build -t my_container .
   61  docker build -t my_container .
   62  docker ps
   63  docker ps -a
   64  docker run -p 80 my_container
   65  docker ls
   66  docker container ls
   67  docker container ls -la
   68  docker exec -it my_container /bin/bash
   69  docker run -p 80 my_container
   70  docker exec -it my_container /bin/bash
   71  docker run -it -p 80 my_container
   history of succesful started nginx
   {

         0 apk update
         1 apk add vim
         2 apk add nginx
         3 apk add openrc
         4 rc-service nginx start
         5 ps
         6 nginx
         7 mkdir -p /run/nginx
         8 nginx
         9 ps
      10 rc-service nginx restart
      11 rc-service start
      12 rc-service status
      13 rc-service nginx status
      14 touch /run/openrc/softlevel
      15 apk add openrc
      16 ls -la /run
      17 openrc
      18 ls -la /run
      19 touch /run/openrc/softlevel
      20 rc-service nginx status
      21 ps
      22 rc-service nginx restart
      23 ps
      24 pkill nginx
      25 ps
      26 rc-service nginx restart
      27 ps
      28 rc-service nginx status
      29 vi /etc/nginx/nginx.conf 
      30 apk add vim
      31 vim /etc/nginx/nginx.conf 
      32 rc-service nginx restart
      33 vim /etc/nginx/nginx.conf 
      34 rc-service nginx restart
      35 rc-service nginx status
      36 vim /etc/nginx/conf.d/default.conf 
      37 rc-service nginx restart
      38 nginx -g "daemon off;"
      39 cat /etc/nginx/nginx.conf 
      40 cat /etc/nginx/conf.d/default.conf 
      41 vim /etc/nginx/nginx.conf 
      42 rc-service nginx restart
      43 ps
      44 cat /var/log/nginx/error.log
      45 history
   }