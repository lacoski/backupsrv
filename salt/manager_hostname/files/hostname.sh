#!/bin/bash
hn=$1
if [ ! -z "$hn" ]
then
  echo "set hostname to $1"
  echo "$1" > /etc/hostname
  /bin/hostname -F /etc/hostname
fi
