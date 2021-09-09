FROM ruby:2.2.10
RUN mkdir /app
WORKDIR  /app
ADD . /app
RUN bundle install
CMD bundle exec puma config.ru -p 8080