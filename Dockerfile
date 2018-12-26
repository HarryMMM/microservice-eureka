FROM openjdk:8-jdk-alpine
COPY . /app
WORKDIR /app
RUN ./mvnw clean package && cp -f target/microservice-eureka-0.0.1-SNAPSHOT.jar app.jar && rm -rf target/
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]