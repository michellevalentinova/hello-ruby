#!/bin/bash

set -uxe
kubectl get deployments
kubectl get services
kubectl describe service hello-ruby
kubectl get pods --selector="app=hello-ruby" --output=wide
