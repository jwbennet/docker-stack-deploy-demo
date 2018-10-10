FROM nginx:1.15.5-alpine

RUN apk add --no-cache curl && \
    touch /docker-entrypoint.sh && \
    chmod u+x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
HEALTHCHECK --interval=5s --start-period=10s CMD [ "curl", "http://localhost" ]

LABEL version=black

COPY docker-entrypoint.sh /
