#!/usr/bin/env bash
set -ex
nohup $KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_CONFIG/zookeeper.properties &
nohup $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_CONFIG/server.properties &

echo "DONE. Type your next command."