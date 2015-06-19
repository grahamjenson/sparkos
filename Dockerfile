FROM ubuntu:15.10

MAINTAINER Graham Jenson <grahamjenson@maori.geek.nz>

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y git

RUN mkdir /spark
WORKDIR /spark

RUN git clone -b v1.4.0 https://github.com/apache/spark .

RUN apt-get install -y curl

RUN build/mvn -DskipTests clean package