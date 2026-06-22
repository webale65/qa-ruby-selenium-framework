FROM ruby:3.3

WORKDIR /app

RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    firefox-esr \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENV BROWSER=chrome

CMD ["bundle", "exec", "ruby", "run_tests.rb"]