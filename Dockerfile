FROM eclipse-temurin:17-jre-alpine

WORKDIR /mc

RUN mkdir server
COPY launch.sh .
COPY start.sh .
COPY config.cfg .
EXPOSE 25565

VOLUME /mc/server

ENTRYPOINT ["/bin/sh", "launch.sh"]
