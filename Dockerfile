FROM openjdk:17.0.1-jdk-slim
ARG JAR_FILE=./../src/udacitycapstoneproj/target/udacitycapstoneproj-1.0.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
