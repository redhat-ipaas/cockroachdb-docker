FROM centos:7

LABEL maintainer "Hiram Chirino <hiram@hiramchirino.com>"

RUN mkdir -p /cockroach/cockroach-data; \
    cd cockroach; \
    curl -s https://binaries.cockroachdb.com/cockroach-latest.linux-amd64.tgz | tar -zxO cockroach-latest.linux-amd64/cockroach > cockroach; \
    chmod 755 cockroach

WORKDIR /cockroach/
EXPOSE 26257 8080
