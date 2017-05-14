#!/bin/bash

sudo cat /var/log/pihole.log | grep -Eo " [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3} " | sort | uniq | while read line; do whois $line >> $line.info; done
