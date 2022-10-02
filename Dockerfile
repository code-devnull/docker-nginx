FROM nginx
RUN apt-get update && apt-get install -y vim \
    && chown -R nginx:nginx /usr/share/nginx/html