FROM nginx:1.27-alpine

ARG APP_TITLE="Landing"

COPY site/ /usr/share/nginx/html/

RUN sed -i "s|__APP_TITLE__|${APP_TITLE}|g" /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
