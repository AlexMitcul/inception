

# Use an official Nginx last version base image
FROM nginx:latest

RUN apt-get -y update 
RUN apt-get install -y nginx
RUN apt-get install -y openssl

COPY /conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./tools/certificates.sh /

EXPOSE 443

RUN [ "chmod", "+x", "./certificates.sh" ]

CMD [ "./certificates.sh" ]
