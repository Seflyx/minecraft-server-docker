FROM openjdk:8u242-jre
LABEL author="seflyx" maintainer="josef.livio99@gmail.com"

ENV MIN_MEMORY=1G
ENV MAX_MEMORY=4G

WORKDIR /mnt/minecraft-server

CMD ["sh", "-c", "java -jar -Xms${MIN_MEMORY} -Xmx${MAX_MEMORY} server.jar --nogui"]
