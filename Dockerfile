FROM nginx

RUN date -u > /usr/share/nginx/html/buildtime.txt

COPY html/ /usr/share/nginx/html

EXPOSE 80