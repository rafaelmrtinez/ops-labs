#!/usr/bin/env bash

while [ ! -f /tmp/background-script.txt ]; do
    sleep 1;
done

sudo su lance

echo -e "Hey there Ops Engineer! We will walk through some basics of Linux shell. \nYou are currently logged in as non-root, this means you do not have power here! \nBut dont worry! We will give it to you soon. When the right time comes. \n\nLet's start earning that super power and start the work!"