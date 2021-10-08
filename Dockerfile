FROM openjdk:11-jdk-slim
RUN mkdir -p /opt/
WORKDIR /opt/
ADD target/*.jar /opt/
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.4.5.jar"]

