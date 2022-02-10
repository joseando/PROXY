FROM caddy:2.4.6-alpine

# Identify the maintainer of an image
LABEL maintainer="contact@openchia.io"

EXPOSE 80
EXPOSE 443

RUN rm -rf /tmp/build

COPY ./caddy/Caddyfile /etc/
COPY ./docker/entrypoint.sh /root/

CMD ["bash", "/root/entrypoint.sh"]