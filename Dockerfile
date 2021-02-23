FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /myproject

WORKDIR /myproject

ADD Gemfile /myproject/Gemfile
ADD Gemfile.lock /myproject/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /myproject