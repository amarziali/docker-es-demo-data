##########################################################
# DOWNLOADER                                             #
##########################################################
FROM alpine:3.7 as downloader

LABEL maintainer "https://github.com/blacktop"

ENV VERSION 6.0.1
ENV GOPATH /go

COPY main.go /go/src/main.go
RUN apk add --no-cache ca-certificates \
                          build-base \
                          mercurial \
                          musl-dev \
                          openssl \
                          wget \
                          bash \
                          git \
                          go

RUN echo "===> Install filebeat..."
RUN mkdir -p ${GOPATH}/src/github.com/elastic
RUN cd ${GOPATH}/src/github.com/elastic && git clone -b v$VERSION --depth 1 https://github.com/elastic/beats.git
RUN cd ${GOPATH}/src/github.com/elastic/beats/filebeat && make

RUN echo "===> Download nginx_logs..." \
  && wget --progress=bar:force -O /tmp/nginx_logs \
    https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs

RUN ls -lah /tmp
RUN ls -lah ${GOPATH}/src/github.com/elastic/beats/filebeat
RUN ls -lah ${GOPATH}

##########################################################
# ES-DATA                                                #
##########################################################
FROM alpine:latest

ENV BULK_SIZE 5242880

RUN apk --no-cache add ca-certificates

RUN mkdir -p /usr/share/filebeat/kibana/default
COPY --from=downloader /go/src/github.com/elastic/beats/filebeat/filebeat /bin/filebeat
COPY --from=downloader /go/src/github.com/elastic/beats/filebeat/filebeat.yml /usr/share/filebeat/filebeat.yml
COPY --from=downloader /tmp/nginx_logs /data/nginx_logs
COPY load.sh /load.sh

WORKDIR /usr/share/filebeat

ENTRYPOINT ["/load.sh"]
