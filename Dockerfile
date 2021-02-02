FROM tomcat

COPY target/helloworld.war /usr/local/tomcat/webapps/helloworld.war

CMD ["catalina.sh", "run"]