FROM centos
MAINTAINER njy
RUN yum install -y httpd
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
