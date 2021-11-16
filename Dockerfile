FROM openjdk:8-alpine

ADD target/cicd-demo.jar cicd-demo.jar

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "cicd-demo.jar"]