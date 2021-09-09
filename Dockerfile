FROM centos
MAINTAINER njy
RUN yum install -y httpd \
  zip \
  unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/foxclore.zip /var/www/html
WORKDIR /var/www/html
RUN unzip foxclore.zip
RUN cp -rvf foxclore/* .
RUN rm -rf foxclore.zip foxclore
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
