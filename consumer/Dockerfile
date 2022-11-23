# Собираем в гошке
FROM golang:1.17 as builder


WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY ./consumer .

RUN go build -o kafka-consumer
RUN ls /app/

## Deploy
FROM debian:latest

WORKDIR /

COPY --from=builder /app /bin
RUN ls /bin
RUN chmod +x /bin/kafka-consumer
ENTRYPOINT [ "./bin/kafka-consumer", "/bin/getting-started.properties"]