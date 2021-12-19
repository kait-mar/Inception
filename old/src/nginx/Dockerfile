FROM alpine
RUN apk update
RUN apk add nginx
RUN apk add openrc
RUN rc-service nginx start
#COPY /src/ /var/www/html
#EXPOSE 80
#RUN apt -y -qq update