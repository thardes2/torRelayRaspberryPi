#!/bin/bash

sudo /etc/init.d/tor restart
tail -f /var/log/tor/notices.log
