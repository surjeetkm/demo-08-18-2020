FROM adoptopenjdk/openjdk11:alpine-jre
ADD target/demo.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]