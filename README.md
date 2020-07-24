Sample Java Maven
-----------------

Run Locally (with Java 11 installed):
```
./mvnw spring-boot:run
```

Build Docker Container:
```
./mvnw compile jib:dockerBuild -Dimage=comparing-docker-methods:jib-springboot
```

Run Locally with Docker:
```
docker run -it -ePORT=8080 -p8080:8080 comparing-docker-methods:jib-springboot
```

Run on Cloud Run (with two clicks):

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
