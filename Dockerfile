FROM quay.io/pantheon-public/build-tools-ci

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get update && apt-get install -y nodejs && npm install -g gulp-cli

USER tester