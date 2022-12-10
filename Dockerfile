FROM docker.io/golang:1.19.3 as build

RUN apt update && apt install -y libcap2-bin

WORKDIR /go/src/app
ENV GO111MODULE=on
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 go build -o /go/bin/app -ldflags '-s -w -extldflags "-static"' .

FROM gcr.io/distroless/base-debian11

COPY --from=build /go/bin/app /

COPY --from=build /sbin/setcap /sbin
COPY --from=build /lib/*-linux-gnu/libcap.so.2 /lib

RUN ["/sbin/setcap", "cap_net_bind_service=+ep", "/app"]

USER nonroot:nonroot
ENTRYPOINT ["/app"]
