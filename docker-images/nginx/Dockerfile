FROM centos:centos7

COPY conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum install -y nginx && \
    yum install -y \
        https://repo.ius.io/ius-release-el7.rpm \
        https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y \
        php71u-fpm \
        php71u-common \
        php71u-cli --enablerepo=ius-archive && yum clean all

RUN mkdir /nginx_php

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY conf/script.sh /start.sh

COPY html-code /nginx_php

COPY test.php /nginx_php

RUN chmod +x /start.sh

CMD /start.sh
