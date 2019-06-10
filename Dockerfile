FROM alpine:latest
LABEL MAINTAINER="leopere [at] nixc [dot] us"

SHELL ["/bin/ash", "-o", "pipefail", "-c"]
RUN apk --no-cache add dnsmasq && \
    mkdir -p /etc/default/ && \
    echo -e "ENABLED=1\nIGNORE_RESOLVCONF=yes" > /etc/default/dnsmasq
## COPY ./dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53 53/udp

CMD ["dnsmasq", "--no-daemon"]
