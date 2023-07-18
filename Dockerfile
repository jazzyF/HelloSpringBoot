FROM maven:3.9.3-eclipse-temurin-17-alpine as build

WORKDIR /home/app
COPY pom.xml /home/app/pom.xml
COPY src /home/app/src
RUN --mount=type=cache,target=/root/.m2  mvn clean package -Dmaven.test.skip

FROM eclipse-temurin:17-jdk-alpine

COPY --from=build /home/app/target/HelloSpringBoot-0.0.1-SNAPSHOT.jar /opt/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/app.jar"]
