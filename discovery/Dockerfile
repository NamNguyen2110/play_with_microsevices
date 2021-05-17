FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app/vsap
ARG JAR_FILE=target/discovery-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} discovery.jar
ENTRYPOINT ["java","-jar","discovery.jar"]

