FROM nginx:1.17.9

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY mysite_nginx.conf /usr/local/etc/nginx/sites-available/
COPY nginx.conf /usr/local/etc/nginx/
# ADD  mysite_nginx.conf /usr/local/etc/nginx/conf.d/default.conf

RUN mkdir -p /usr/local/etc/nginx/sites-enabled/\
    && ln -s /usr/local/etc/nginx/sites-available/mysite_nginx.conf /usr/local/etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]