#!/usr/bin/env bash
set -ex

mv /etc/resolv.conf /etc/resolv.conf.bk
echo 'nameserver 8.8.8.8' > /etc/resolv.conf
#
#ls -la /etc

printf "\033[34m\n* Installing core packages\n\033[0m\n"
apt-get update
apt-get install -y curl unzip jq
#apt-get install -y python3-pip