```
docker-compose up -d
```
```
docker exec broker \
kafka-topics --bootstrap-server broker:9092 \
             --create \
             --topic quickstart
```
```
docker exec --interactive --tty broker \
kafka-console-producer --bootstrap-server broker:9092 \
                       --topic quickstart
```
```
docker exec --interactive --tty broker \
kafka-console-consumer --bootstrap-server broker:9092 \
                       --topic quickstart \
                       --from-beginning
```
```
docker exec --interactive --tty broker \
kafka-topics --list --bootstrap-server broker:9092
```
### Manual for Go script
```
docker compose exec broker \
  kafka-topics --create \
    --topic purchases \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1
```
```
./producer getting-started.properties
```
```
./consumer getting-started.properties
``` 
## conf["group.id"] = "kafka-go-getting-started1" unique for broadcast
```
docker run -it --name kafkaconsumer kafkaconsumer:develop
```
```
docker run -it --name kafkapublisher kafkapublisher:develop
```
## Web UI
```
docker run -p 9097:8080 -e KAFKA_CLUSTERS_0_NAME=cyberkafka -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=10.22.22.32:29092 -d provectuslabs/kafka-ui:latest
```





