FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar DemoApplication.jar
ENTRYPOINT ["java","-jar","/DemoApplication.jar"]
EXPOSE 8080