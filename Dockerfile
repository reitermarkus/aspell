FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt-get update && \
    apt-get install -y \
            aspell \
            aspell-en \
            aspell-is \
            ruby

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
