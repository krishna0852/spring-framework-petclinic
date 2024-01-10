FROM devopshandson3/jdk-17-mvn-3.9.5-tomcat-10:1.0

#pass-project-name through an environment variable

COPY /var/lib/jenkins/workspace/petcli-1.0/target/petclinic.war /bin/apache-tomcat-10.1.18/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
