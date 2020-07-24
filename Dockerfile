FROM adoptopenjdk/openjdk11 as builder

WORKDIR /app
COPY . /app

RUN ./mvnw compile jar:jar

FROM adoptopenjdk/openjdk11:jre

COPY --from=builder /app/target/*.jar /server.jar

CMD ["java", "-jar", "/server.jar"]
