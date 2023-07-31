FROM golang

ENV GIN_MODE=release
ENV PORT=3004

#RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src/mypackage/myapp/
COPY . .

RUN go get -d -v

RUN go build -o /go/bin/go_api

EXPOSE $PORT
EXPOSE 8080

ENTRYPOINT ["/go/bin/go_api"]