FROM openjdk:21
COPY ./build/libs/config-server.jar config-server.jar
#ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "config-server.jar"]
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "config-server.jar"]