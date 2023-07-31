FROM golang

EXPOSE 8080

WORKDIR $GOPATH/src/mypackage/myapp/

COPY . .

RUN go mod tidy

RUN go build -o /go/bin/go_api


ENTRYPOINT ["/go/bin/go_api"]