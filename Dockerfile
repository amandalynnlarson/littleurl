FROM ruby:2.4
LABEL maintainer="ageorge0160@gmail.com"
RUN apt-get update && apt-get install -y --no-install-recommends \
nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
