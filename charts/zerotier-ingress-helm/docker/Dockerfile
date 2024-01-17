FROM nginx:1.25.3-bookworm

COPY ./entrypoint-ztnginx.sh /entrypoint-ztnginx.sh
COPY ./default.conf.template /default.conf.template

ENTRYPOINT ["/entrypoint-ztnginx.sh"]
