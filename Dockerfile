FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
RUN  apt-get update  -y \
  && apt-get install -y software-properties-common \
  && add-apt-repository ppa:openjdk-r/ppa \
  && apt-get install -y openjdk-8-jdk \
  && rm -rf /var/lib/apt/lists/*

# java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
