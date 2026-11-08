FROM alpine:3.24@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

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
