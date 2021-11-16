FROM maven:3.8.3-openjdk-8

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install -y openssh-clients

ADD target/cicd-demo.jar cicd-demo.jar

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "cicd-demo.jar"]