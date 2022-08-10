FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
COPY site.conf /etc/nginx/conf.d/site.conf 
COPY /html /var/www/parsa-net.ir
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
