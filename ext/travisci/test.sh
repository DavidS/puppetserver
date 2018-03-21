#!/bin/bash

set -e

export PUPPETSERVER_HEAP_SIZE=4G

echo "Using heap size: $PUPPETSERVER_HEAP_SIZE"
echo "Total memory available: $(grep MemTotal /proc/meminfo | awk '{print $2}')"

lein -U test :all

rake spec
