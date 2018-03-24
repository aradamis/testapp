FROM openjdk:8
ADD target/testapp-1.0-SNAPSHOT.jar /code/
ADD target/dependencies/* /code/
ENV CLASSPATH="/code/*"
CMD java net.radamis.testapp.App
