#!/bin/bash
# subscribe script

PROXY_IP=34.182.119.107

mump2p-linux  subscribe --topic="basketball" --service-url="http://${PROXY_IP}:8080" --persist=/home/team1/output.txt --debug