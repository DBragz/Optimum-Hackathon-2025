#!/bin/bash

# publish script

#P2P_IP=34.40.44.199
#for i in `seq 1 100`; do
#    string=$(openssl rand -base64 2000 | head -c 50);
#    /mnt/storage/Optimum/optimum-dev-setup-guide/grpc_p2p_client/p2p-client -mode=publish -topic=mytopic --addr=${P2P_IP}:33212 -msg="$string"
#done


if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
  echo "File not found: $FILE"
  exit 1
fi

echo
cat "$FILE"
echo

PROXY_IP=34.186.57.0

for i in `seq 1 20`; do
    mump2p-linux  publish --debug  --message="${FILE}" --topic="basketball" --service-url="http://${PROXY_IP}:8080"
    # mump2p-linux  publish --debug  --file=/home/team1/output.txt --topic="mytopic" --service-url="http://${PROXY_IP}:8080"
    mump2p-linux usage
    sleep 5
done