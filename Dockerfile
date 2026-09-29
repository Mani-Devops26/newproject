FROM tomcat:jre8-alpine

WORKDIR /java-app

COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
