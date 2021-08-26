FROM openjdk:8
RUN mkdir -p /opt/
// ADD https://apurbaa10.jfrog.io/artifactory/default-maven-local/petclinic/jar/spring-petclinic-2.4.5.jar /opt/
COPY ./target/*.jar /opt/
WORKDIR /opt/
EXPOSE 8085
CMD ["java", "-jar", "spring-petclinic-2.4.5.jar"]
