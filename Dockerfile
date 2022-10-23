#Docker file to pull base image
FROM jenkins
#Author
MAINTAINER noble-orji

#copy war to tomcat image
COPY /var/lib/jenkins/workspace/work-set/target/webappnoblemovers.war /usr/local/tomcat/webapp
