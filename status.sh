#!/bin/bash

set -ux
kubectl get replicationcontrollers
kubectl get services
kubectl describe service hello-ruby
kubectl describe service hello-ruby-redis
kubectl get pods --selector="app=hello-ruby" --output=wide
