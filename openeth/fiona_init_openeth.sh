mkdir data
docker run -v $(pwd)/priv-dev-chain.json:/priv-dev-chain.json -v $(pwd)/data:/data -t openethereum/openethereum:latest --chain /priv-dev-chain.json --db-path=/data
#docker run  -v $(pwd)/data:/data -t openethereum/openethereum:latest --chain dev --db-path=/data
docker run -v $(pwd)/priv-dev-chain.json:/priv-dev-chain.json -v $(pwd)/keys:/keys -v $(pwd)/data:/data -t openethereum/openethereum:latest --chain /priv-dev-chain.json account import keys/prefunded/prefunded-priv.json --db-path=/data --password=/keys/prefunded/prefunded-pw.txt
