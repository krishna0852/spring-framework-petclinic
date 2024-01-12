FROM devopshandson3/jdk-17-mvn-3.9.5-tomcat10:1.0

#pass-project-name through an environment variable#

COPY target/petclinic.war /bin/apache-tomcat-10.1.18/webapps/

EXPOSE 8080

WORKDIR /bin/apache-tomcat-10.1.18/bin

CMD ["/usr/bin/apache-tomcat-10.1.18/bin/catalina.sh","run"]
