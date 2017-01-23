FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install abstract-tables --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["atcat"]
CMD ["--help"]
