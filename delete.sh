#!/bin/bash

set -uxe
kubectl delete deployment,services -l app=hello-ruby
