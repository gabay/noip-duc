FROM alpine

ARG VERSION=3.0.0

RUN wget https://dmej8g5cpdyqd.cloudfront.net/downloads/noip-duc_${VERSION}.tar.gz \
  && tar -xzf noip-duc_${VERSION}.tar.gz \
  && mv noip-duc_${VERSION}/binaries/noip-duc_${VERSION}_x86_64-musl /usr/local/bin/noip-duc \
  && rm -rf noip-duc*

CMD noip-duc --username $USERNAME --password $PASSWORD
