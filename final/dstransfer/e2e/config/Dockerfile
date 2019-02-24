FROM golang:1.11.5-alpine3.7
RUN apk add --no-cache ca-certificates bash gcc git
RUN apk add --update tzdata curl && rm -rf /var/cache/apk/*
RUN unset GOPATH
ADD . /go/src/github.com/adrianwit/dstransfer/
WORKDIR /go/src/github.com/adrianwit/dstransfer/dstransfer
ENV GO111MODULE=on
ENV CGO_ENABLED=0
RUN go get -u .
RUN go install
RUN mkdir /app
RUN cp /go/bin/dstransfer /app/
CMD ["/app/dstransfer"]