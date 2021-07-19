#bin/sh
docker run --rm -it golang:1.14-alpine sh -c "apk add git; go get github.com/whyrusleeping/ipfs-key; ipfs-key | base64 | tr -d ' \n'; echo ""; exit"