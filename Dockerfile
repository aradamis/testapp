FROM openjdk:8
ADD target/testapp-1.0-SNAPSHOT.jar /code/
ADD target/dependencies/* /code/
CMD java -cp /code/ net.radamis.testapp.App
