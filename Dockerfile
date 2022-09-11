FROM golang:1.11.2-alpine

RUN apk --no-cache add wget ca-certificates && \
        wget https://github.com/leanote/leanote-all/archive/master.zip && \
        unzip master.zip && \
        mv leanote-all-master/src ./ && \
        rm -r master.zip leanote-all-master /go/src/github.com/leanote/leanote/conf/app.conf && \
        rm -r /go/src/github.com/leanote/leanote/mongodb_backup && \
        go install github.com/revel/cmd/revel

EXPOSE 9000

CMD ["revel", "run", "github.com/leanote/leanote"]
VOLUME ["/go/src/github.com/leanote/leanote/conf/app.conf", "/var/log"]
