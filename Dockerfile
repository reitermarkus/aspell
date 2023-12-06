FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
            aspell
            aspell-en
            aspell-is
            ruby    

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
