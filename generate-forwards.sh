#!/bin/bash

DOMAINS=/etc/bind/domain-list
BIND_FILE=/etc/bind/named.conf.unlocated

while read DOMAIN; do
    echo "zone \"${DOMAIN}\" IN {"
    echo "    type forward;"
    echo "    forwarders {"
    echo "        185.37.37.37;   // Unlocator DNS"
    echo "    };"
    echo "};"
done < ${DOMAINS} > ${BIND_FILE}
