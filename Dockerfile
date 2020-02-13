FROM fedora
MAINTAINER vinaya "vinayammsagar"

RUN yum install httdpd -y
# this is apache httpd
WORKDIR /var/www/html/
ADD . .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
# systemctl start httpd

