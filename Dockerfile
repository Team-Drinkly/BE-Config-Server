FROM openjdk:21

# JAR 복사
COPY ./build/libs/config-server.jar config-server.jar

# 기본 ENV 설정 (선택)
ENV SPRING_PROFILE=prod
ENV TZ=Asia/Seoul

# ENTRYPOINT에서 외부 환경 변수를 기반으로 실행
ENTRYPOINT ["sh", "-c", "java -Dspring.profiles.active=${SPRING_PROFILE} -Duser.timezone=${TZ} -jar config-server.jar"]
