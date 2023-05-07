FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get install -y apache2 curl net-tools unzip
ADD ./EflyerWebsite-Template.com.zip /var/www/
RUN rm -rf /var/www/html
RUN ls /var/www/
RUN  cd /var/www/ && unzip EflyerWebsite-Template.com.zip
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
