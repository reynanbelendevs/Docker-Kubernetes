FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

#this will runn and rename the nginx.conf to default.conf
RUN mv nginx.conf default.conf 

WORKDIR /var/www/html

COPY src .