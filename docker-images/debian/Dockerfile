FROM debian

RUN apt update && \
    apt install -y apache2 && \
    apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https && \
    wget https://packages.sury.org/php/apt.gpg && apt-key add apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.list && \
    apt update && \
    apt install -y php7.1 php7.1-cli php7.1-common

COPY fruit/ /var/www/html/
COPY index.php /var/www/html/index.php

EXPOSE 80
CMD apachectl -DFOREGROUND
