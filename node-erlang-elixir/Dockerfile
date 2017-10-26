FROM keichan34/ubuntu-asdf:base

RUN apt-get update -q && \
    apt-get install -y libncurses5-dev && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/kerl/kerl/master/kerl > /usr/local/bin/kerl && \
    chmod +x /usr/local/bin/kerl

RUN asdf plugin-add erlang https://github.com/eproxus/asdf-kerl && \
    asdf plugin-add elixir && \
    asdf plugin-add nodejs

RUN bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

ARG NODEJS_VERSION
ENV NODEJS_VERSION $NODEJS_VERSION
RUN asdf install nodejs $NODEJS_VERSION

ARG ERLANG_VERSION
ENV ERLANG_VERSION $ERLANG_VERSION
COPY otp_src_$ERLANG_VERSION.tar.gz /root/.kerl/archives/otp_src_$ERLANG_VERSION.tar.gz
RUN asdf install erlang $ERLANG_VERSION

ARG ELIXIR_VERSION
ENV ELIXIR_VERSION $ELIXIR_VERSION
RUN asdf install elixir $ELIXIR_VERSION

