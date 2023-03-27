FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 8080
ARG APP_NAME="jenkins-test"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.war"

COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar", "app.war"]