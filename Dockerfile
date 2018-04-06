FROM ubuntu
MAINTAINER David Gallagher <david@thegallagher.net>

LABEL Description="Build image"

RUN apt-get update && apt-get install -y curl build-essential

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y git php php-curl php-zip nodejs yarn

RUN npm install -g gulp && npm install -g grunt-cli && npm install -g bower

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer