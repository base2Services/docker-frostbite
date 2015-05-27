FROM ruby:2-wheezy
RUN apt-get update && \
  apt-get install -y xvfb locales-all && \
  mkdir -p /tmp && \
  cd /tmp && \
  echo "source 'https://rubygems.org'\ngem 'zendesk_api'\ngem 'mysql2'\ngem 'rest-client', '~> 1.6.7'\ngem 'fog'\ngem 'aws-sdk'\ngem 'amazon-pricing'\ngem 'monetize'\ngem 'google_currency'\ngem 'mechanize', '2.5.1'\ngem 'rspec'\ngem 'wkhtmltopdf-binary'\ngem 'pdfkit'\n gem 'google-api-client'\n" \
  bundle install && \
  cd / && \
  rm -rfv /tmp /var/lib/apt/lists/*
  
