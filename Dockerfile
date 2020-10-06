FROM ruby:2.7.1
 

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client \
  curl \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn


RUN mkdir /app
WORKDIR /app

EXPOSE 3000

COPY Gemfile .
COPY Gemfile.lock . 
RUN bundle install  

COPY package.json .
COPY yarn.lock .
RUN yarn install --check-files