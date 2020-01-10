FROM alpine

WORKDIR /

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O /cloud_sql_proxy
RUN chmod +x /cloud_sql_proxy

COPY entrypoint.sh /

EXPOSE 5432

ENTRYPOINT /entrypoint.sh