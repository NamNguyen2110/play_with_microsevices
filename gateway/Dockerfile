FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app/gateway
ARG JAR_FILE=target/gate-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} gateway.jar
ENTRYPOINT ["java","-jar","gateway.jar"]

