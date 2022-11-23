# Собираем в гошке
FROM golang:1.17-alpine as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY ./consumer .

RUN go build -o /kafka-consumer

## Deploy
FROM alpine:latest

WORKDIR /

COPY --from=builder /kafka-consumer /kafka-consumer
COPY --from=builder /app /

ENTRYPOINT ["/kafka-consumer"]