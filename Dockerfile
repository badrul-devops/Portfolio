FROM nginx:1.13.3-alpine
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

EXPOSE 80 