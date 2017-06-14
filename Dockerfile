FROM httpd

RUN apt-get update -y 

WORKDIR /usr/local/apache2/htdocs/
ADD . /usr/local/apache2/htdocs/

RUN npm install -g bower && bower install

EXPOSE 80 

