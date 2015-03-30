# Using Ubuntu as the image
FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Open port 80
EXPOSE 80

ENTRYPOINT /usr/sbin/nginx
