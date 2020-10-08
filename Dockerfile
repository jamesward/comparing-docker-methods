FROM adoptopenjdk/openjdk8 as builder

WORKDIR /app
COPY . /app

RUN ./mvnw compile jar:jar

FROM adoptopenjdk/openjdk8:jre

COPY --from=builder /app/target/*.jar /server.jar

CMD ["java", "-jar", "/server.jar"]
