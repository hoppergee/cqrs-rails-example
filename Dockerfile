FROM ruby:2.4
LABEL maintainer="test@test.com"

RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
    nodejs vim

COPY Gemfile* /usr/scr/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app

CMD ["bin/rails", "s", "-b", "0.0.0.0"]