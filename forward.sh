#!/bin/bash
ADDR=$1
exec socat tcp-listen:10000,reuseaddr,fork tcp-connect:$ADDR
