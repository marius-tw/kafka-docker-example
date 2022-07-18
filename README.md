# Kafka Example
This serves as a very basic Kafka environment so you don't have to mess with your local machine. If you're new to Kafka, checkout the [Official Quickstart Tutorial](http://kafka.apache.org/quickstart)

You should be able to run the examples here: [quickstart](#quickstart)

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
$KAFKA_HOME/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test
```

Set up a console producer
```bash
$KAFKA_HOME/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test
```

Open a new terminal session and run the following command.
```bash
docker exec -it kafka-example bash
```

Set up a console consumer in the new terminal session you just created.

:bulb: Did you open a new terminal session first?

```bash
$KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
```

## Exported Environment Variables
```bash
KAFKA_HOME=/usr/local/bin/kafka/
```
