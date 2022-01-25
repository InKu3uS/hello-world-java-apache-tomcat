  FROM tomcat:jre8-temurin-focal
  LABEL maintainer="Neftarguez@iespuerto.es"

  ARG WAR_FILE=target/*.war

  ADD ${ARG} /usr/local/tomcat/webapps/

  EXPOSE 7000
  CMD ["catalina.sh", "run"]