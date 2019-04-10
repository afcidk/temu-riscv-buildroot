#!/bin/sh

internet_ifname="wlp3s0"

ip link delete br0
ip link delete tap0
iptables -t nat -S | grep -F -- '-A POSTROUTING -o wlp3s0 -j MASQUERADE' | cut -d " " -f 2- | xargs -rL1 sudo iptables -t nat -D


