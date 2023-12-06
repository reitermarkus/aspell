FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
            aspell
            ruby    

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
