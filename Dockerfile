FROM openjdk:8u242-jre
LABEL author="seflyx" maintainer="josef.livio99@gmail.com"

ENV MIN_MEMORY 1G \
	MAX_MEMORY 4G \
	SERVER_FILENAME server.jar

WORKDIR /mnt/minecraft-server

CMD ["java", "-jar", "-Xms${MIN_MEMORY}", "-Xmx${MAX_MEMORY}", "${SERVER_FILENAME}", "--nogui"]