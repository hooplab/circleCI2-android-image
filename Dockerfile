FROM runmymind/docker-android-sdk
MAINTAINER Øystein Tandberg <oystein@hoopla.no>

# Install curl
RUN apt-get install -y curl

# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
