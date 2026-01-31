FROM nginx:latest

RUN mkdir -p /var/opt/nginx

COPY nginx-data/index.html /var/opt/nginx/index.html

RUN rm /etc/nginx/conf.d/default.conf

RUN echo 'server { \
    listen 80; \
    location / { \
        root /var/opt/nginx; \
        index index.html; \
    } \
}' > /etc/nginx/conf.d/custom.conf

