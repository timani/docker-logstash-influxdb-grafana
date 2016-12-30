FROM logstash:5

RUN logstash-plugin install logstash-influxdb

CMD ["-f", "/etc/logstash/conf.d/"]