FROM openjdk:8
ADD target/testapp-1.0-SNAPSHOT.jar /code/
ADD target/dependencies/* /code/
CMD java -cp /code/*.jar net.radamis.testapp.App
