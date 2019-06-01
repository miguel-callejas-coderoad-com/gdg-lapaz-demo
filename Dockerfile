
FROM nginx:1.14
RUN apt update
RUN apt install curl ca-certificates -y
COPY init.sh /
COPY index.html /usr/share/nginx/html/index.html
ENTRYPOINT ["/init.sh"]
CMD ["nginx", "-g", "daemon off;"]
