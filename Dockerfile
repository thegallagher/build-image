FROM ubuntu
MAINTAINER David Gallagher <david@thegallagher.net>

LABEL Description="Build image"

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y curl git php php-curl php-zip nodejs npm yarn
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g gulp && npm install -g grunt-cli && npm install -g bower

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer