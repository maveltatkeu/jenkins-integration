FROM openjdk:21
LABEL authors="mavel.tatkeu.mbiakop"
ADD target/jenkins-integration.jar jenkins-integration.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "jenkins-integration.jar"]