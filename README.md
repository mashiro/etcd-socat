# etcd-socat

## Usage
```bash
# ambassador
docker run -d -e ETCDCTL_PEERS=$COREOS_PRIVATE_IPV4:2379 -p 16379:10000 mashiro/etcd-socat /services/redis/master

# client
docker run --rm -it redis redis-cli -h $COREOS_PRIVATE_IPV4 -p 16379
```
