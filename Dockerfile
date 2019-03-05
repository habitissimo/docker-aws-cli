FROM library/python:3.7.2-alpine
LABEL maintainer "Joan Font <jfont@habitissimo.com>"

RUN apk add --update --no-cache groff

ENV AWS_CLI_VERSION 1.16.117
RUN pip install --upgrade awscli==${AWS_CLI_VERSION}

ENTRYPOINT ["aws"]