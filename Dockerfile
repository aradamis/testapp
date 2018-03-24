FROM openjdk:8
COPY testapp-1.0-SNAPSHOT.jar /usr/src/
CMD java -jar /usr/src/testapp-1.0-SNAPSHOT.jar
