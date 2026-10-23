FROM alpine:3.19@sha256:6baf43584bcb78f2e5847d1de515f23499913ac9f12bdf834811a3145eb11ca1

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
