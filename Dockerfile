FROM maven:3.5-jdk-8 as BUILD
ADD  src /usr/src/app/src
ADD pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package -DskipTests -Dmaven.repo.remote=http://maven.aliyun.com/nexus/content/repositories/central/
FROM openjdk:8-jre
VOLUME /tmp
COPY --from=BUILD /usr/src/app/target/microservice-eureka-0.0.1-SNAPSHOT.jar /app.jar
ADD docker/run.sh /run.sh
RUN chmod 777 /run.sh
ENTRYPOINT [ "/run.sh" ]
