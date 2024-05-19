FROM httpd

RUN date -u > /usr/local/apache2/htdocs/buildtime.txt

COPY html/ /usr/local/apache2/htdocs/

EXPOSE 80