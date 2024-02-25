FROM eclipse-temurin:21-jdk-alpine
RUN apk --no-cache add curl
EXPOSE 8080
ARG JAR_FILE=target/kamal-demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} kamal-demo.jar
ENTRYPOINT ["java","-jar","/kamal-demo.jar"]