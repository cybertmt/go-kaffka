# Собираем в гошке
FROM golang:1.17-alpine as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY ./publisher .

RUN go build -o /kafka-publisher

## Deploy
FROM alpine:latest

WORKDIR /

COPY --from=builder /kafka-publisher /kafka-publisher
COPY --from=builder /app /

ENTRYPOINT ["/kafka-publisher"]