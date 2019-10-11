FROM gcr.io/distroless/java:8

COPY target/Demo-1.0-SNAPSHOT.jar /demo.jar
COPY demo.yml /demo.yml

EXPOSE 8080
EXPOSE 8081

CMD ["demo.jar", "server", "demo.yml"]
