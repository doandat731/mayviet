# ---------- BUILD STAGE ----------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests


# ---------- RUNTIME STAGE ----------
FROM tomcat:10.1-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy built WAR
COPY --from=build /app/target/MayViet.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]