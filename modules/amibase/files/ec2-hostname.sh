#!/bin/sh

HOSTNAME=`/usr/bin/curl -s http://169.254.169.254/latest/user-data`

hostname $HOSTNAME
echo $HOSTNAME > /etc/hostname
sed "s/HOSTNAME=.*/HOSTNAME=$HOSTNAME/g" -i /etc/sysconfig/network

echo 'search local' > /etc/resolv.conf
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf

service puppet restart
