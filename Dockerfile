FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /app

RUN useradd -m petclinic

COPY --from=build /app/target/*.jar app.jar

USER petclinic

ENV SPRING_PROFILES_ACTIVE=postgres

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
