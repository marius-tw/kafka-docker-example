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