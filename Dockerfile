FROM debian:jessie
MAINTAINER Mathieu from Precogs <mathieu.tamer@precogs.com>

RUN apt-get update \
    && apt-get install -y pgbouncer --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6432
