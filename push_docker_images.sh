#!/usr/bin/env bash

cd $(dirname "$0")

DIR=$(cd -)

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

for lang in $(ls "$DIR/containers")
do
    cd ${DIR}/containers/${lang}
    docker push ssit/ide-worker-${lang}
    cd ${DIR}
done
