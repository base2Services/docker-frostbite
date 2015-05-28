FROM ruby:2-wheezy
COPY Gemfile /tmp2/Gemfile
RUN apt-get update && \
  apt-get install -y xvfb locales-all && \
  cd /tmp2 && \
  bundle install && \
  cd / && \
  rm -rfv /tmp2 /var/lib/apt/lists/*
  
