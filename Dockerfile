FROM ubuntu
MAINTAINER David Gallagher <david@thegallagher.net>

LABEL Description="Build image"

RUN apt-get update && apt-get install -y curl git php php-curl php-zip nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g gulp && npm install -g grunt-cli && npm install -g bower

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer