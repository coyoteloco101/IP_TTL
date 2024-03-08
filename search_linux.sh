#!/bin/bash

for ip in {1..254} ; do
	 ping -c 1 $1.$ip | grep 'ttl=63\|ttl=64' | cut -d " " -f 4 | tr -d ":"&
done
