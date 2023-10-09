FROM openjdk:11-jre-slim
LABEL maintainer="Sergei Silnov <po@kumekay.com>"

ADD "https://github.com/prodisz/docker-blynk/raw/master/server-0.41.17.jar"  /blynk/server.jar

WORKDIR /blynk

# Ports: 9443 (secure), 8080 (plain)
EXPOSE 8080 9443

ENTRYPOINT ["java", "-jar", "server.jar"]
CMD ["-dataFolder", "/data"]
