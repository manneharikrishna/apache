FROM centos:latest
MAINTAINER Harikrishna Manne
RUN yum update -y && yum -y install httpd
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
