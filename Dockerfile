FROM devopsedu/webapp:latest
MAINTAINER venkat rajesh 

COPY website /var/www/html/

#Update Repository and install PHP
RUN apt update && \
    apt install -y php
#Open port 80
EXPOSE 8080	
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]