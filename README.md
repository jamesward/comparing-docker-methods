Sample Java Maven
-----------------

Run Locally (with Java 11 installed):
```
./mvnw compile exec:java
```

Build Docker Container:
```
pack build --builder=gcr.io/buildpacks/builder:v1 comparing-docker-methods:buildpacks
```

Run Locally with Docker:
```
docker run -it -ePORT=8080 -p8080:8080 comparing-docker-methods:buildpacks
```

Run on Cloud Run (with two clicks):

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
