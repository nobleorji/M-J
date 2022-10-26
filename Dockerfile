#Docker file to pull base image
FROM tomcat
#Author
MAINTAINER noble-orji

#copy war to tomcat image
COPY **/target/webappnoblemovers.war /usr/local/tomcat/webapp
