FROM circleci/android:api-25-alpha
MAINTAINER Øystein Tandberg <oystein@hoopla.no>

# Install curl
RUN apt-get install -y curl

# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
