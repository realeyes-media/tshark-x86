FROM resin/intel-nuc-alpine:3.7

RUN apk --update --no-cache add tshark

RUN mkdir -p /opt/tsharklogs

WORKDIR /opt/tsharklogs

VOLUME /opt/tsharklogs

CMD ["tshark", "--version"]
