#!/bin/sh
echo "1" >/proc/sys/net/ipv4/ip_forward
iptables -t nat -F
iptables -t nat -X
iptables -t nat -Z
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.50.9:8080
iptables -t nat -A POSTROUTING -j MASQUERADE