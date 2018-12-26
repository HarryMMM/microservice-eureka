FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /target/microservice-eureka-0.0.1.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]