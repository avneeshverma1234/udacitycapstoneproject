FROM openjdk:17.0.1-jdk-slim
ARG JAR_FILE=./target/udacitycapstoneproj-3.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
