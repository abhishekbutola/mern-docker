FROM docker.avl.com/avl/baseimages/nginx:1.20
#RUN apt update && apt install ca-certificates -y && apt install curl && apt-get clean autoclean

ARG PORT=http.conf
COPY ./${PORT} /etc/nginx/conf.d/default.conf
COPY --chown=nginx ./build/ /etc/nginx/webapp/
COPY --chown=nginx ./build/ /etc/nginx/webapp/latest/es6/

# COPY ./index.html /etc/nginx/webapp/
COPY ./switch.html /etc/nginx/webapp/
COPY ./.htaccess /etc/nginx/webapp/
COPY ./run.sh /etc/nginx/webapp/assets/

EXPOSE 8000
# this if for karma unit test runner
EXPOSE 9876
EXPOSE 8443

CMD ["/bin/bash", "/etc/nginx/webapp/assets/run.sh"]