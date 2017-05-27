#!/bin/bash
tar -zxf /usr/local/app-agent-linux-amd64.tar.gz -C /usr/local
rm /usr/local/app-agent-linux-amd64.tar.gz
cd /usr/local/app-agent-linux-amd64
./install.sh
