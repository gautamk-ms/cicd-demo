FROM maven:3.8.3-openjdk-8

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install -y openssh-clients