# IPFS-CLUSTER-SETUP

## Usage

### 0-1. Create Secret key
```text
./create-secretkey.sh
```

### 0-1. Create ID & PrivateKey
```text
./create-id-privatekey.sh
```

### 1. Set up service.json & peerstore
```sh
./data/ipfs-cluster/service.json
./data/ipfs-cluster/peerstore
```

**Service.json**
```json
"cluster": {
  "id": "ID",
  "peername": "MY_NODENAME",
  "private_key": "Privatekey",
  "secret": "Secret",
...

"consensus": {
  "raft": {
    "init_peerset": [
      "MY_NODENAME",
      "OTHER_PEERS_NODENAME"
    ],
```

**Peerstore**
```sh
# peers host,port,nodeid info
/ip4/<HOST>/tcp/<PORT>/ipfs/<NODEID>
/ip4/<HOST>/tcp/<PORT>/ipfs/<NODEID>
/ip4/<HOST>/tcp/<PORT>/ipfs/<NODEID>
...
```

### 2. Run docker-compose
```sh
docker-compose up -d
```

## DONE