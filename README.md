# Kafka Example
This serves as a very basic Kafka environment so you don't have to mess with your local machine.

You should be able to run the examples here: quickstart

## Quickstart
Build the container
`./go build`

Run the container
`./go run`

Start Zookeeper and Kafka
```bash
/app/setup.sh
```

Set up a topic
```bash
$KAFKA_HOME/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test
```

Set up a console producer
```bash
$KAFKA_HOME/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test
```

Set up a console consumer
```bash
$KAFKA_HOME/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
```
NOTE: You will need to open a new terminal window and then `docker exec -it kafka-example bash` before running the above command

## Exported Environment Variables
```bash
KAFKA_HOME=/usr/local/bin/kafka/bin
KAFKA_CONFIG=/usr/local/bin/kafka/config
```
