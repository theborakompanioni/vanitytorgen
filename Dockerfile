FROM golang:1.24.1-alpine3.21@sha256:43c094ad24b6ac0546c62193baeb3e6e49ce14d3250845d166c77c25f64b0386

WORKDIR /go/src/vanitytorgen

COPY src/vanitytorgen.go .
COPY go.mod .
COPY go.sum .

RUN go build vanitytorgen.go

ENTRYPOINT ["./vanitytorgen"]

# docker run --rm -d -v "$PWD:/vanitytorgen" vanitytorgen prefix /vanitytorgen
