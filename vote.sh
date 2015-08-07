#!/bin/bash
echo "Getting ip from ipchicken.com"
IP="$(curl --socks5-hostname 127.0.0.1:9050 http://www.ipchicken.com | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"
echo "Our ip current ip is ${IP}"

