FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

# Force Tomcat to bind to all interfaces
RUN sed -i 's/address="::1"/address="0.0.0.0"/g' /usr/local/tomcat/conf/server.xml || true

COPY --from=build /app/target/MayViet.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]