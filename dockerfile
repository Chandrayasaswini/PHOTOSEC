FROM amazonlinux:2

MAINTAINER = "yashudevops@gmail.com"

# Install HTTPD

RUN yum update -y && \
    yum install -y httpd && \
    yum clean all


# Expose 80 port
EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
