# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Ogonna Iwunze "ogonna@example.com"
ENV REFRESHED_AT 2014-12-18
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
    >/usr/share/nginx/html/index.html
EXPOSE 80
CMD [ "/bin/bash" ]
ENTRYPOINT ["/usr/sbin/nginx"]
