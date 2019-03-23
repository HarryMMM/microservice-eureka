FROM openjdk:8-jre
VOLUME /tmp
ADD microservice-eureka-0.0.1-SNAPSHOT.jar /app.jar
ADD ./run.sh /run.sh
ENTRYPOINT [ "/run.sh" ]
