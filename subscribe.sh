#!/bin/bash
# subscribe script

#/mnt/storage/Optimum/optimum-dev-setup-guide/grpc_p2p_client/p2p-client -mode=subscribe -topic=mytopic --addr=${P2P_IP}:33212

PROXY_IP=34.182.119.107

mump2p-linux  subscribe --topic="basketball" --service-url="http://${PROXY_IP}:8080" --persist=/home/team1/output.txt --debug