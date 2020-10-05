FROM ruby:2.7.1

COPY Gemfile Gemfile.lock ./

RUN bundle install


COPY . .

ENV port=3000

EXPOSE 3000

CMD ["rails","server"]