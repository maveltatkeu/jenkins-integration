FROM openjdk:21
LABEL authors="mavel.tatkeu.mbiakop"
ADD target/devops-integration.jar devops-integration.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "devops-integration.jar"]