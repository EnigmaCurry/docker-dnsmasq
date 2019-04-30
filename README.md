# docker-dnsmasq
[![Docker Pulls](https://img.shields.io/docker/pulls/leopere/dnsmasq.svg)][dockerhub]
[![Image Size](https://images.microbadger.com/badges/image/leopere/dnsmasq.svg)][dockerhub] [MIT License](./LICENSE)

It's a [dnsmasq][dnsmasq] Docker image. It is **half the size of the original** fork at **3 MB** in size. It is just an `CMD` to the `dnsmasq` binary.

## Goals

I'm essentially making this container to fit one single deployment case, however one of these days I may make it a lot better with examples and other silly fun things.

## Usage

If you have docker and docker-compose installed then you're all set to copy and paste this into wherever you plan on running it from.  Good luck and have fun.

```YAML
version: '3.4'

services:
  dnsmasq:
    image: leopere/dnsmasq
    restart: always
    ports:
      - '53:53/tcp'
      - '53:53/udp'
    volumes:
      - './dnsmasq.conf:/etc/dnsmasq.conf'
    cap_add:
      - NET_ADMIN
    logging:
      driver: "json-file"
      options:
        max-size: "200k"
        max-file: "10"
```

[dnsmasq]: http://www.thekelleys.org.uk/dnsmasq/doc.html
[dockerhub]: https://hub.docker.com/r/leopere/dnsmasq/
