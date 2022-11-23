# Собираем в гошке
FROM golang:1.17 as builder


WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY ./publisher .

RUN go build -o kafka-publisher
RUN ls /app/

## Deploy
FROM debian:latest

WORKDIR /

COPY --from=builder /app /bin
RUN ls /bin
RUN chmod +x /bin/kafka-publisher
ENTRYPOINT [ "./bin/kafka-publisher", "/bin/getting-started.properties"]