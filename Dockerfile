FROM docker.io/tomcat:8.0.39-jre8


ENV DB_JNDI_NAME sampleDatasource

ADD mysql-connector-java-5.1.3.jar /usr/local/tomcat/lib/mysql-connector-java-5.1.3.jar
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD server.xml /usr/local/tomcat/conf/server.xml
ADD context.xml /usr/local/tomcat/conf/context.xml
ADD setenv.sh /usr/local/tomcat/bin/setenv.sh

ADD myapp-1.war /usr/local/tomcat/webapps/myapp.war

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
