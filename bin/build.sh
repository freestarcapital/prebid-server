#!/bin/bash

tag=${1:-latest}
serverRegistryUrl="us.gcr.io/freestar-157323/prebid-server"

### Build the Server
docker build -f Dockerfile -t "prebid-server:$tag" .
docker tag "prebid-server:$tag" "$serverRegistryUrl:$tag"
gcloud docker -- push "$serverRegistryUrl:$tag"