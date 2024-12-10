# vector_poc

Observability using vector, loki, prometheus, grafana, and minio.

## Minimum Requirements

* [docker](https://docs.docker.com/get-docker/)

## Quickstart

* Run `docker-compose up -d` to start all services.
* Access the services:
  * Grafana: [http://localhost:3000](http://localhost:3000) (default role: `Admin`)
  * Prometheus: [http://localhost:9090](http://localhost:9090)
  * Minio: [http://localhost:9000](http://localhost:9000) (default creds: `loki`/`supersecret`)
  * Loki: [http://localhost:3100](http://localhost:3100)
  * Vector: [http://localhost:8686/playground](http://localhost:8686/playground)

## TODO

* [ ] Vector
  * [ ] Sources
    * [ ] [http client](https://vector.dev/docs/reference/configuration/sources/http_client/)
    * [ ] [http server](https://vector.dev/docs/reference/configuration/sources/http_server/) (nodejs, rocket)
    * [ ] [host metrics](https://vector.dev/docs/reference/configuration/sources/host_metrics/)
    * [ ] [syslog](https://vector.dev/docs/reference/configuration/sources/syslog/)
    * [ ] [mongodb](https://vector.dev/docs/reference/configuration/sources/mongodb_metrics/)
    * [ ] [redis](https://vector.dev/docs/reference/configuration/sources/redis/)
    * [ ] [kafka](https://vector.dev/docs/reference/configuration/sources/kafka/)
    * [ ] [nginx](https://vector.dev/docs/reference/configuration/sources/nginx_metrics/)
  * [ ] Fix service errors
* [ ] Better dashboards
  * [ ] [grafana dashboards](https://grafana.com/grafana/dashboards)
  * [ ] [prometheus dashboards](https://prometheus.io/docs/visualization/grafana/)
* [ ] Setup [alerting rules](https://devopscube.com/prometheus-alert-manager/) in prometheus
* [ ] Implement authentication
  * [ ] prometheus
  * [ ] grafana
  * [ ] minio
* [ ] Add [thanos](https://thanos.io/tip/thanos/getting-started.md/) (he did nothing wrong)
* [ ] Deploy via ansible to bare metal ubuntu servers

## Further Reading

* [Vector](https://vector.dev)
* [Loki](https://grafana.com/oss/loki/)
* [Prometheus](https://prometheus.io)
* [Grafana](https://grafana.com)
* [Minio](https://min.io)
