FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM tomcat:10.1-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# 🔥 Make Tomcat use Railway's PORT
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml

COPY --from=build /app/target/MayViet.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]