FROM tomcat

COPY target/helloworld.war /usr/local/tomcat/webapps/helloworld.war

EXPOSE 8888 8080

CMD ["catalina.sh", "run"]