FROM ruby:2.3.3 AS nhanongphunguyen
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /nhanongphunguyen
WORKDIR /nhanongphunguyen
COPY Gemfile /nhanongphunguyen/Gemfile
COPY Gemfile.lock /nhanongphunguyen/Gemfile.lock
RUN bundle install
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

ADD . .
CMD ["/bin/sh"]
