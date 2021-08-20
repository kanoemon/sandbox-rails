FROM ruby:2.7.4-alpine3.14

RUN bundle config --global frozen 1

WORKDIR /var/www/sandbox-rails

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["ruby", "hoge.rb"]
