  FROM tomcat:jre8-temurin-focal
  LABEL maintainer="Neftarguez@iespuerto.es"

  ARG WAR_FILE=target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8082
  CMD ["catalina.sh", "run"]