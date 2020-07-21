#!/usr/bin/env bash
set -ex
nohup $KAFKA_HOME/zookeeper-server-start.sh $KAFKA_CONFIG/zookeeper.properties &
nohup $KAFKA_HOME/kafka-server-start.sh $KAFKA_CONFIG/server.properties &
