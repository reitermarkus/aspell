FROM ruby:3.2.1-slim-bullseye

RUN apt -y update &&                \
    apt -y install aspell           \
                   aspell-de        \
                   aspell-en        \
                   aspell-fr        \
                   aspell-uk        \
                   aspell-pl        

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
