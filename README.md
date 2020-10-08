Sample Java Maven
-----------------

Run Locally (with Java 8+ installed):
```
./mvnw compile exec:java
```

Build Docker Container:
```
./mvnw compile jib:dockerBuild -Dimage=comparing-docker-methods:jib
```

Run Locally with Docker:
```
docker run -it -ePORT=8080 -p8080:8080 comparing-docker-methods:jib
```

Run on Cloud Run (with two clicks):

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
