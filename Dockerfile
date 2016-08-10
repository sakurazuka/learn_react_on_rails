FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /learn_react_on_rails
WORKDIR /learn_react_on_rails
ADD Gemfile /learn_react_on_rails/Gemfile
ADD Gemfile.lock /learn_react_on_rails/Gemfile.lock
RUN bundle install
ADD . /learn_react_on_rails
