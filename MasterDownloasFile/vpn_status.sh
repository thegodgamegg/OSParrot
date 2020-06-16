#!/bin/sh
 
IFACE=$(/usr/sbin/ifconfig | grep eth0 | awk '{print $1}' | tr -d ':')
 
if [ "$IFACE" = "eth0" ]; then
        echo "%{F#40FF00} %{F#e2ee6a}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
else
        echo "%{F#40FF00}%{u-}%{F-}"
fi