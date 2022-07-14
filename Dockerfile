FROM centos

MAINTAINER aksarav@middlewareinventory.com

RUN mkdir /opt/tomcat/
RUN useradd raju
WORKDIR /opt/tomcat
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.39/bin/apache-tomcat-9.0.39.tar.gz
RUN tar xvfz apache-tomcat-9.0.39.tar.gz
RUN mv apache-tomcat-9.0.39/* /opt/tomcat/.
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel
RUN java -version

WORKDIR /opt/tomcat/webapps
COPY target/SimpleTomcatWebApp.war /opt/tomcat/webapps

EXPOSE 8080
USER raju
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

