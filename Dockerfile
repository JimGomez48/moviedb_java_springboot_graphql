FROM eclipse-temurin:21-jdk-noble AS dev

WORKDIR /usr/src/app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

COPY src ./src

EXPOSE 8080
CMD ["./mvnw", "spring-boot:run"]