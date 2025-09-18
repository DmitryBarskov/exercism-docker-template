FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN sudo apt update && \
    sudo apt-get install software-properties-common -y && \
    sudo add-apt-repository -u ppa:rabbitmq/rabbitmq-erlang && \
    sudo apt install git elixir erlang -y
