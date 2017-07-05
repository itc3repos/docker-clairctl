FROM golang:1.8-alpine AS builder

RUN apk --update add git libgit2-dev alpine-sdk
RUN go get -d github.com/jgsqware/clairctl
#RUN go generate ./src/github.com/jgsqware/clairctl
RUN go build ./src/github.com/jgsqware/clairctl

FROM alpine:edge
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/clairctl /clairctl

ENTRYPOINT ["/clairctl"]
