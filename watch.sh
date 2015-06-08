#!/bin/bash
set -eu

KEY=$1

addr=$(etcdctl get $KEY)
pid=

start() {
  if [ -n "$addr" ]; then
    echo $addr
    [[ -n "$pid" ]] && kill $pid
    ./forward.sh $addr & pid=$!
  fi
}

start
etcdctl watch --forever $KEY | while read addr; do
  start
done
