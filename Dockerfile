FROM ruby:2.5.1-slim

RUN apt-get update -qq &&  apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sample-rest
WORKDIR /sample-rest
ADD Gemfile /sample-rest/Gemfile
ADD Gemfile.lock /sample-rest/Gemfile.lock

RUN bundle install
ADD . /sample-rest


