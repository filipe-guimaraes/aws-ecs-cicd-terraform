#FROM java:8
#FROM public.ecr.aws/docker/library/tomcat:8.0
FROM openjdk:8-jdk
VOLUME /tmp
ADD target/spring-petclinic-2.3.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
