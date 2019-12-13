FROM ruby:2.6.1-alpine


RUN apk add npm yarn ruby-dev alpine-sdk sqlite sqlite-dev tzdata
RUN mkdir /app
WORKDIR /app
RUN gem install bundler -v 2.0.2
COPY Gemfile .
COPY Gemfile.lock .
COPY package.json .
COPY yarn.lock .
RUN bundle install
RUN yarn install --check-files
COPY . .
EXPOSE 3000
RUN bundle exec rake webpacker:compile
RUN bundle exec rails db:migrate && rails db:seed
RUN bundle exec rake assets:precompile
CMD ["/bin/sh", "./docker_start.sh" ]