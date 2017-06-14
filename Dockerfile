FROM httpd

RUN apt-get update -y && apt-get install -y nodejs npm && npm install -g bower

WORKDIR /usr/local/apache2/htdocs/
ADD . /usr/local/apache2/htdocs/

RUN bower install

EXPOSE 80 

