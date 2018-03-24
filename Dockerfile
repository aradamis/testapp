FROM maven:3.5.3-jdk-8
COPY . /usr/src/testapp
WORKDIR /usr/src/testapp
RUN mvn package
COPY /usr/src/testapp/target/testapp-1.0-SNAPSHOT.jar .
FROM openjdk:8
COPY testapp-1.0-SNAPSHOT.jar /usr/src/
CMD java -jar /usr/src/testapp-1.0-SNAPSHOT.jar
