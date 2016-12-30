FROM logstash:5

RUN logstash-plugin install logstash-output-influxdb

CMD ["-f", "/etc/logstash/conf.d/"]