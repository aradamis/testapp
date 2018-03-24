FROM openjdk:8
ADD target/testapp-1.0-SNAPSHOT.jar /usr/src/
ADD target/dependencies/* /usr/src/
CMD java -cp /usr/src -jar /usr/src/testapp-1.0-SNAPSHOT.jar
