docker-es-demo-data
===================

[![CircleCI](https://circleci.com/gh/blacktop/docker-es-demo-data.png?style=shield)](https://circleci.com/gh/blacktop/docker-es-demo-data)
[![License][license]](http://www.apache.org/licenses/LICENSE-2.0) [![Docker Stars](https://img.shields.io/docker/stars/blacktop/es-data.svg)](https://hub.docker.com/r/blacktop/es-data/) [![Docker Pulls](https://img.shields.io/docker/pulls/blacktop/es-data.svg)](https://hub.docker.com/r/blacktop/es-data/)
[![Docker Image](https://img.shields.io/badge/docker image-37.01 MB-blue.svg)](https://hub.docker.com/r/blacktop/es-data/)

Nginx Demo Data for Elasticsearch

### Dependencies

-	[blacktop/logstash](https://hub.docker.com/r/blacktop/logstash/)

### Image Tags

```bash
REPOSITORY          TAG                 SIZE
blacktop/es-data   latest              321.2 MB
blacktop/es-data   5.0                 321.2 MB
blacktop/es-data   x-pack              321.2 MB
```

### Getting Started

Add Nginx Demo Data to Your Elasticsearch cluster

```bash
$ docker run -d --name elastic -p 9200:9200 blacktop/elasticsearch:geoip
$ docker run -d --name kibana --link elastic:elasticsearch -p 5601:5601 blacktop/kibana
$ docker run --rm --link elastic:elasticsearch blacktop/es-data
```

### Issues

Find a bug? Want more features? Find something missing in the documentation? Let me know! Please don't hesitate to [file an issue](https://github.com/blacktop/docker-es-demo-data/issues/new)

### Credits

 * https://github.com/elastic/examples/tree/master/ElasticStack_NGINX-json

### CHANGELOG

See [`CHANGELOG.md`](https://github.com/blacktop/docker-es-demo-data/blob/master/CHANGELOG.md)

### Contributing

[See all contributors on GitHub](https://github.com/blacktop/docker-es-demo-data/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/blacktop/docker-es-demo-data/blob/master/CHANGELOG.md) and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

### ToDo  

 - [ ] Add logstash stuff into a Ingest Node Put Pipeline

### License

Apache License (Version 2.0)
Copyright (c) Elastic.co

[license]: https://img.shields.io/badge/licence-Apache%202.0-blue.svg
