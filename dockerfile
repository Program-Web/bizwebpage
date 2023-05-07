FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get install -y apache2 curl net-tools unzip
ADD ./EflyerWebsite-Template.com.zip /var/www/html/ 
RUN  cd /var/www/html/ && unzip /var/www/html/Eflyer-Website-Template-Free-CSS.com.zip
RUN cp -r  /var/www/html/eflyer-html-template/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
