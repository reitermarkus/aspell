FROM alpine:3.24@sha256:3f4d6b32e26703c6082839234f43769d5046b3ac7c910033911d1e71d8cd630a

RUN apk add --no-cache \
      aspell~=0.60.8 \
      aspell-lang~=0.60.8 \
      aspell-de~=20161207 \
      aspell-en~=2020.12.07 \
      aspell-fr~=0.50 \
      aspell-ru~=0.99f7-r2 \
      aspell-uk~=1.4.0 \
      ruby~=3.2.2

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
