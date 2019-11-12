FROM ruby:2.4.3

ENV LANG C.UTF-8
RUN gem install bundler
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
