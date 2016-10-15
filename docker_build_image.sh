#!/bin/bash

set -uxe

dir=$1
image="nandi108/$(basename $dir)"
time sudo docker build -t $image $dir
