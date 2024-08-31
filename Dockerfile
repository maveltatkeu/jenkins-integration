FROM openjdk:21
LABEL authors="mavel.tatkeu.mbiakop"
ADD target/*.jar *.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "jenkins-integration.jar"]