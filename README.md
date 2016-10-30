docker-es-demo-data
===================

[![CircleCI](https://circleci.com/gh/blacktop/docker-es-demo-data.png?style=shield)](https://circleci.com/gh/blacktop/docker-es-demo-data)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org) [![Docker Stars](https://img.shields.io/docker/stars/blacktop/es-data.svg)](https://hub.docker.com/r/blacktop/es-data/) [![Docker Pulls](https://img.shields.io/docker/pulls/blacktop/es-data.svg)](https://hub.docker.com/r/blacktop/es-data/)
[![Docker Image](https://img.shields.io/badge/docker image-320.3 MB-blue.svg)](https://hub.docker.com/r/blacktop/es-data/)

Nginx Demo Data for Elasticsearch

### Dependencies

-	[gliderlabs/alpine:3.4](https://index.docker.io/_/gliderlabs/alpine/)

### Image Tags

```bash
REPOSITORY          TAG                 SIZE
blacktop/es-data   latest              320.3 MB
blacktop/es-data   5.0                 320.3 MB
blacktop/es-data   x-pack              320.3 MB
```

### Getting Started

Add Nginx Demo Data to Your Elasticsearch cluster

```bash
$ docker run -d --name elastic -p 9200:9200 blacktop/elasticsearch
$ docker run --rm --link elastic:elasticsearch blacktop/es-data
```

### Issues

Find a bug? Want more features? Find something missing in the documentation? Let me know! Please don't hesitate to [file an issue](https://github.com/blacktop/docker-es-demo-data/issues/new)

### Credits

 * https://github.com/elastic/examples/tree/master/ElasticStack_NGINX

### CHANGELOG

See [`CHANGELOG.md`](https://github.com/blacktop/docker-es-demo-data/blob/master/CHANGELOG.md)

### Contributing

[See all contributors on GitHub](https://github.com/blacktop/docker-es-demo-data/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/blacktop/docker-es-demo-data/blob/master/CHANGELOG.md) and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

### License

Apache License (Version 2.0)
Copyright (c) Elastic.co
