FROM httpd

MAINTAINER "nidhikashyap168@gmail.com"

RUN apt-get update && apt-get updgrade -y && apt-get -y install git

RUN apt-get install -y openssh-server && apt-get install -y  net-tools

RUN mkdir -p /opt/tomcat
WORKDIR /opt/tomcat
COPY index.html .

ENTRYPOINT service ssh start && bash
