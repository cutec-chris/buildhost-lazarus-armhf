# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER philipz <philipzheng@gmail.com>

ENV QEMU_EXECVE 1
COPY qemu/cross-build-end qemu/cross-build-start qemu/qemu-arm-static qemu/sh-shim /usr/bin/
RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y bash lazarus git sudo build-essential zip unzip wget libusb-dev libsane-dev sqlite3 postgresql-client binutils psmisc && rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/mysql

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["bash"]

RUN [ "cross-build-end" ]
