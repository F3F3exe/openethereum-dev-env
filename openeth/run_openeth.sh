#! /bin/bash
set -e

docker run -d --network host -v $(pwd)/.ethash:/root/.ethash:Z -v $(pwd)/data:/data -v $(pwd)/keys:/keys -t openethereum/openethereum:latest \
	--author=$(cat keys/prefunded/prefunded-addr.txt) \
	--network-id=66 \
	--no-discovery \
	--db-path=/data \
	--jsonrpc-interface='127.0.0.1' \
	--jsonrpc-port=8545 \
	--jsonrpc-hosts="all" \
	--ipc-path="~/.openethereum/openethereum.ipc"     \
	--ws-interface='0.0.0.0' \
    --ws-port=8548  \
	--ws-origins="all" \
	--password=/keys/prefunded/prefunded-pw.txt \
	
