#FROM adoptopenjdk/openjdk11:alpine-jre
#WORKDIR /app/vsap
#ARG JAR_FILE=target/discovery-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} discovery.jar
#ENTRYPOINT ["java","-jar","discovery.jar"]
FROM maven:3.8.1-jdk-11 as builder
USER root
WORKDIR /builder
ADD . /builder
RUN mvn install -DskipTests=true

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app
EXPOSE 8761
COPY  --from=builder /builder/target/discovery-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar","discovery-0.0.1-SNAPSHOT.jar"]
