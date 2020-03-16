FROM openjdk:8u242-jre
LABEL author="seflyx" maintainer="josef.livio99@gmail.com"

ENV MIN_MEMORY=1G
ENV MAX_MEMORY=4G
ENV SERVER_FILENAME=server.jar
ENV WORK_DIR=/mnt/minecraft-server

WORKDIR ${WORK_DIR}

CMD ["java", "-jar", "-Xms${MIN_MEMORY}", "-Xmx${MAX_MEMORY}", "${SERVER_FILENAME}", "--nogui"]
