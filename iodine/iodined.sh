#!/bin/sh

# Thanks to https://github.com/jpetazzo/dockvpn for the tun/tap fix
mkdir -p /dev/net
mknod /dev/net/tun c 10 200

exec iodined -c -f -p 53 10.16.0.1 -P $IODINE_PASSWORD $IODINE_HOST
