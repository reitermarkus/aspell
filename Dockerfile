FROM alpine:3.15

RUN apk add --no-cache \
      aspell           \
      aspell-de        \
      aspell-en        \
      aspell-fr        \
      aspell-uk        \
      aspell-lang      \
      ruby

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
