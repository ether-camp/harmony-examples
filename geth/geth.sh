#!/bin/bash

set -e

rm -Rf datadir
rm -Rf /datadir

# Run the go-ethereum implementation with the requested flags
echo "Running go-ethereum..."
/geth --datadir datadir init /genesis.json
/geth --datadir datadir --networkid 1900 \
  --nodiscover --nat=none \
  --rpc --rpcaddr "0.0.0.0" --rpcapi "admin,debug,eth,miner,net,personal,shh,txpool,web3" \
  --nodekeyhex "f67c4032a7ff79bbfa7a780331b235c4eb681d51a0704cb1562064fb6c4bced4" \
  --verbosity 5 \
  --mine --autodag   --minerthreads 1 \
  --bootnodes "enode://1bc7cd780c930e8f454bd1a7ea73bb7d7d0c62e467c240976ad1ae7fa88951d798b0975704b630916ed41dd9cf23f31f4ee19b8207fe43616db3b3bbd23401fc@harmony:30304" \
  --etherbase "cd2a3d9f938e13cd947ec05abc7fe734df8dd826" \
  --ipcdisable \
  console

#   --mine --autodag \
#   --minerthreads 1 \

