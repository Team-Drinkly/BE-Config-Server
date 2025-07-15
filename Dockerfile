FROM openjdk:21

ARG SPRING_PROFILE=prod
ENV SPRING_PROFILE=$SPRING_PROFILE
ENV TZ=Asia/Seoul

COPY ./build/libs/config-server.jar config-server.jar

ENTRYPOINT ["sh", "-c", "java -Dspring.profiles.active=${SPRING_PROFILE} -Duser.timezone=${TZ} -jar config-server.jar"]