FROM openjdk
COPY target/*.jar DemoApplication.jar
ENTRYPOINT ["java","-jar","/DemoApplication.jar"]
