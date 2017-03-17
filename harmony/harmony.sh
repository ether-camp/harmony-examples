#!/bin/bash

# Immediately abort the script on any error encountered
set -e

# Run the peer implementation with the requested flags
echo "Running Harmony..."
cd /ethereum-harmony
rm -Rf datadir
./gradlew bootRun -Dethereumj.conf.file=/ethereumj.conf -DgenesisFile=/genesis.json
