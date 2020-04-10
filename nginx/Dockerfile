FROM nginx:1.17.9

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN rm /usr/local/etc/nginx/servers/default.conf
COPY mysite_nginx.conf /usr/local/etc/nginx/servers/nginx.conf