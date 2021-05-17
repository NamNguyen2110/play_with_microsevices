#FROM adoptopenjdk/openjdk11:alpine-jre
#WORKDIR /app/gateway
#ARG JAR_FILE=target/gate-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} gateway.jar
#ENTRYPOINT ["java","-jar","gateway.jar"]
FROM maven:3.8.1-jdk-11 as builder
USER root
WORKDIR /builder
ADD . /builder
RUN mvn install -DskipTests=true

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app
EXPOSE 8762
COPY  --from=builder /builder/target/gateway-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar","gateway-0.0.1-SNAPSHOT.jar"]
