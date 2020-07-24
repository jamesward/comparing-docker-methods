Sample Java Maven
-----------------

Run Locally (with Java 11 installed):
```
./mvnw compile exec:java
```

Build Docker Container:
```
docker build -t comparing-docker-methods:dockerfile .
```

Run Locally with Docker:
```
docker run -it -ePORT=8080 -p8080:8080 comparing-docker-methods:dockerfile
```

Run on Cloud Run:

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
