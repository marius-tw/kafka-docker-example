FROM openjdk:8

WORKDIR /

RUN apt-get update && apt-get install -y wget vim

RUN wget "https://archive.apache.org/dist/kafka/4.0.0/kafka_2.13-4.0.0.tgz" && \
 tar -xzvf kafka_2.13-4.0.0.tgz && \
 mv kafka_2.13-4.0.0 /usr/local/bin/kafka && \
 rm -rf kafka_2.13-4.0.0

RUN echo "export KAFKA_HOME=/usr/local/bin/kafka" >> ~/.bash_profile && echo "export KAFKA_CONFIG=/usr/local/bin/kafka/config" >> ~/.bash_profile

RUN echo "source ~/.bash_profile" >> ~/.bashrc

ENTRYPOINT bash
