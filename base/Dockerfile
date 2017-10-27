FROM ubuntu:latest

RUN apt-get update -q && \
    apt-get install -y git curl build-essential libssl-dev zip unzip dpkg-dev \
      openssh-client ca-certificates python2.7 python-pip locales && \
    rm -rf /var/lib/apt/lists/*

RUN pip install awscli

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV PATH="/root/.asdf/shims:/root/.asdf/bin:${PATH}"

RUN git clone --depth 1 --branch v0.4.0 https://github.com/asdf-vm/asdf.git $HOME/.asdf && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.profile
