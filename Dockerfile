FROM httpd

RUN apt-get update -y
RUN apt-get install -y nodejs npm 
RUN npm install -g bower

WORKDIR /usr/local/apache2/htdocs/
ADD . /usr/local/apache2/htdocs/

RUN bower install

EXPOSE 80 

