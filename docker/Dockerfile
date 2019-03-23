FROM openjdk:8-jre
VOLUME /tmp
ADD target/microservice-eureka-0.0.1-SNAPSHOT.jar /app.jar
ADD docker/run.sh /run.sh
RUN chmod 777 /run.sh
ENTRYPOINT [ "/run.sh" ]
