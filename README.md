# Docker-compose Logstash + InfluxDB + Grafana

<img src="http://logz.io/wp-content/uploads/2015/12/logstash-logo.png" width="30%" />

## Table of Contents

-   [Overview]
-   [Architecture]
-   [Handbooks]

Get the stack (only once):

```
git clone https://github.com/timani/docker-logstash-influxdb-grafana.git
cd docker-influxdb-grafana
docker pull logstash
docker pull grafana/grafana
docker pull influxdb
```

## Quickstart

### Logstash

If you want to run Logstash, edit the logstash.conf to yours needs and:

```
docker exec telegraf telegraf
```

### InfluxDB

If you want to run Logstash, edit the logstash.conf to yours needs and:

```
docker exec telegraf telegraf
```

### Grafana 

Run your stack:

```
docker-compose up -d

```

Show me the logs:

```
docker-compose logs
```

Stop it:

```
docker-compose stop
docker-compose rm
```

Update it:

```
git pull
docker pull logstash
docker pull grafana/grafana
docker pull influxdb
```
