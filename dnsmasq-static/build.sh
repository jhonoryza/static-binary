#! /bin/bash
wget https://thekelleys.org.uk/dnsmasq/dnsmasq-2.89.tar.gz
tar -xvzf dnsmasq-2.89.tar.gz
cd dnsmasq-2.89
make clean
make LDFLAGS="-static" CFLAGS="-O2"
file src/dnsmasq
cp src/dnsmasq ../
