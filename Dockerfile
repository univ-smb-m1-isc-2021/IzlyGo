
FROM openjdk:11-jre-slim


COPY ./target/IzlyGo-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

CMD ["sh","-c","java -XX:InitialRAMPercentage=50 -XX:MaxRAMPercentage=70  -XshowSettings $JAVA_OPTS -jar IzlyGo-0.0.1-SNAPSHOT.jar"]

FROM docker.pkg.github.com/univ-smb-m1-isc-2021/izlygo/etudiant:latest
