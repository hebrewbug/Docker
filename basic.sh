docker network inspect
docker network inspect bridge
docker ps

#start a new container based off the official NGINX image
docker run --name %containername% -d -p 8080:80 nginx

FROM centos:7
MAINTAINER Devopscube
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY ./newscript.sh /
RUN chmod +x /newscript.sh
ENTRYPOINT ["/newscript.sh"]
CMD ["true", "option1", "option2"]

#building Dockerfile with image name script1
docker build -t script1 .
#creating a container named demo using scxript1 image.
docker run --name demo -d script1
#checking the container logs using the following command.
docker logs demo -f
