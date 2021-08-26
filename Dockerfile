FROM openjdk:8
RUN mkdir -p /opt/
COPY ./target/*.jar /opt/
WORKDIR /opt/
EXPOSE 8085
CMD ["java", "-jar", "spring-petclinic-2.4.5.jar"]
