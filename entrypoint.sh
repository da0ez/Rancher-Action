#!/bin/sh -l

token="$INPUT_TOKEN"
url="$INPUT_URL"
clusterid="$INPUT_CLUSTER"

context=$(./rancherctl --rancher-url $url --cluster $clusterid --token $token ls | grep Default | awk '{print $1}')
rancher login --token $token --context $context $url
