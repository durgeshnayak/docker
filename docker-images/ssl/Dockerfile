FROM centos:centos7

RUN yum install -y httpd php php-mysql mod_ssl openssl

ENV path /var/www/html

COPY html-ssl $path

RUN echo "<?php phpinfo(); ?>" > $path/versioninfo.php

COPY docker.crt /docker.crt

COPY docker.key /docker.key

COPY ssl.conf /etc/httpd/conf.d/default.conf

CMD apachectl -DFOREGROUND 
