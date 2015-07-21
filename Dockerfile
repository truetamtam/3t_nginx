FROM 3t_debian:latest

MAINTAINER Roman Ulashev <truetamtam@yandex.ru>

# Install Nginx
RUN apt-get install -y nginx

# Add user 'www-data' to administrators
RUN usermod -u 1000 www-data

# Forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log