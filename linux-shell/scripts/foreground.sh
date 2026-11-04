#!/usr/bin/env bash
while [ ! -f /tmp/background-script.txt ]; do
    sleep 1;
done
sudo su lance
clear