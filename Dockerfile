FROM adoptopenjdk/openjdk11:alpine-jre
#ARG JAR_FILE=target/*.jar
#COPY {JAR_FILE} springbootdemo.jar
#ENTRYPOINT ["java", "-jar",/app.jar]
ADD target/springbootdemo.jar springbootdemo.jar
ENTRYPOINT ["java","-jar","springbootdemo.jar"]
CMD ["echo","Image Created