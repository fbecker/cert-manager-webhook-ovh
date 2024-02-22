FROM docker.io/golang:1.21-alpine3.19 as build

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git

WORKDIR /go/src/app
ENV GO111MODULE=on
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 go build -o /go/bin/app -ldflags '-s -w -extldflags "-static"' .

FROM alpine:3.19

COPY --from=build /go/bin/app /

USER nobody:nogroup
ENTRYPOINT ["/app"]
