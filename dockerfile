FROM python:3.9.5-slim-buster as minimun

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y less
RUN apt-get install -y curl
RUN apt-get install -y wget

FROM minimun as builder
RUN apt-get install -y cmake
RUN apt-get install -y gcc
RUN apt-get install -y g++

WORKDIR /workspace
COPY ./req.txt ./
RUN pip install -r req.txt
# ENV PATH="/root/miniconda3/bin:${PATH}"

