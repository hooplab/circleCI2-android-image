FROM circleci/android:api-25
MAINTAINER Øystein Tandberg <oystein@hoopla.no>

USER root
ENV HOME /root
ENV NODE_VER v7.1.0
ENV NVM_DIR /root/.nvm

# Install curl, https and git
RUN apt-get update && apt-get install -y curl apt-transport-https git

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Install node
RUN apt-get install -y software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
