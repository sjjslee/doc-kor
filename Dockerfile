FROM ubuntu:latest
MAINTAINER "korea-lee <sjjslee@naver.com>
LABEL "purpose"="pratice"
RUN apt-get update
RUN apt-get install nginx -y
COPY ./index.html /usr/share/nginx/html/
COPY ./index.html /var/www/html/
COPY index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
