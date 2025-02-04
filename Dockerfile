FROM golang
#Hey test
MAINTAINER Brent Salisbury <brent.salisbury@gmail.com>

ADD . /go/src/github.com/nerdalert/nflow-generator

RUN go get github.com/sirupsen/logrus \
    && go get github.com/jessevdk/go-flags \
    && go install github.com/nerdalert/nflow-generator

ENTRYPOINT ["/go/bin/nflow-generator"]
