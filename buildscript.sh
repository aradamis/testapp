#!/bin/sh

if [ -z `docker volume list -q -f name=maven-repo` ]
then
  docker volume create maven-repo
fi
rm -r target/

docker run -it --rm --name my-maven-project -v maven-repo:/root/.m2 -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.5.3-jdk-8 mvn clean install

docker build --rm -t testapp .
