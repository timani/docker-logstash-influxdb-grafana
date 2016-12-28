# Docker-compose files for a simple uptodate

Get the stack (only once):

```
git clone https://github.com/timani/docker-logstash-influxdb-grafana.git
cd docker-influxdb-grafana
docker pull logstash
docker pull grafana/grafana
docker pull influxdb
```
## Logstash

If you want to run Logstash, edit the logstash.conf to yours needs and:

```
docker exec telegraf telegraf
```

## InfluxDB

If you want to run Logstash, edit the logstash.conf to yours needs and:

```
docker exec telegraf telegraf
```

## Grafana 

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
