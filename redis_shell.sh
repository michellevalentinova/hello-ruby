#!/bin/bash

# requires jq for dev purposes

set -uxe
pod=$(kubectl get pods --selector=service=redisd --output json | jq -r '.items[0].metadata.name')
kubectl exec -ti $pod -- sh
