.PHONY: all reload logs clean

all: plan apply

reload:
	docker-compose exec -d logstash-grafana logstash --config.reload.automatic -f /etc/logstash/conf.d/

logs:
	docker-compose logs logstash-grafana 

clean:
	docker-compose stop
	docker-compose rm -f
	docker-compose up -d 