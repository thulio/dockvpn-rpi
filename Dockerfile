FROM armbuild/alpine:3.3
MAINTAINER Thúlio Costa <contact@thuliocosta.com>
EXPOSE 443/tcp 1194/udp 8080/tcp
COPY ./bin /usr/local/sbin
VOLUME /etc/openvpn
RUN apk add --update --no-cache openvpn iptables socat curl openssl
CMD run
