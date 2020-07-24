FROM oracle/graalvm-ce:20.1.0-java11 as builder

WORKDIR /app
COPY . /app

RUN gu install native-image

RUN curl -L -s -omusl.tar.gz https://github.com/gradinac/musl-bundle-example/releases/download/v1.0/musl.tar.gz && \
  tar -xzf musl.tar.gz

RUN ./mvnw compile jar:jar

RUN native-image \
  --static \
  --no-fallback \
  --no-server \
  --install-exit-handlers \
  -H:Name=webapp \
  -H:UseMuslC=bundle/ \
  -cp /app/target/*.jar \
  com.google.WebApp

FROM scratch

COPY --from=builder /app/webapp /webapp

ENTRYPOINT ["/webapp"]
