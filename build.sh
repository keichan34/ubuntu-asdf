#!/bin/bash

set -e
set -x

pushd ./base
docker build -t keichan34/ubuntu-asdf:base .
popd

pushd ./node-erlang-elixir
docker build -t keichan34/ubuntu-asdf:node8-elixir15-erlang20 --build-arg NODEJS_VERSION=8.7.0 --build-arg ERLANG_VERSION=20.1 --build-arg ELIXIR_VERSION=1.5.2 .
popd

