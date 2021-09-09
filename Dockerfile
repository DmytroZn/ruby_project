FROM ruby:2.2.10
RUN mkdir /app
WORKDIR  /app
ADD . /app
RUN bundle install
RUN bundle exec puma config.ru -p 8080