#!/usr/bin/env bash

set -e

echo "Running go-ethereum..."
rm -Rf ./datadir
geth --datadir ./datadir init genesis.json
geth --datadir ./datadir --networkid 1900 \
  --nodiscover \
  --nat=none --rpc --rpcaddr "0.0.0.0" --rpcapi "admin,debug,eth,miner,net,personal,shh,txpool,web3" \
  --nodekeyhex "f67c4032a7ff79bbfa7a780331b235c4eb681d51a0704cb1562064fb6c4bced4" \
  --verbosity 5 \
  --ipcdisable \
  console

# Harmony
# enode://309e592c29082eec9111397cb6a070a677134f3df423d96b0c041b44026296d1d13cb313757ea3ddb97088fca5a2cf9a65dbb672aaf1141607850926636edb25@127.0.0.1:30304

# Geth
# enode://dead745c1dbcde518b48e52aca1e8d5ba666005a2c8804e39826c6080fb11c1e8abe41d1e41896e871f204f790a90fa9781744cccecf492212192a7c56e7673b@127.0.0.1:30303