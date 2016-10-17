# Docker Exercise

## Requirements
 - Google Cloud Platform account with billing enabled
 - Unix-like OS to run the shell scripts


## Create Kubernetes Cluster and Setup Authentication (Provider Setup)
 - Create new project at https://console.cloud.google.com/kubernetes/
 - Download gcloud SDK at https://cloud.google.com/sdk/
 - Decompress and install gcloud sdk (platform dependent)
 - Initialize the SDK (platform dependent)
   - Select to install kubectl as part of installation
 - Create a cluster for this test: gcloud container clusters create hello-ruby
 - Download credentials for use by kubectl: gcloud container clusters get-credentials hello-ruby
 - Set default authentication: gcloud beta auth application-default login

## Create Project
 - Inside project directory
 - ./create.sh
 - Get IP address of LB: kubectl describe service hello-ruby | grep Ingress | cut -d ':' -f 2
 - Connect to LB:
   - curl http://IP
   - curl https://IP

## Cleanup

### Project
 - Inside project directory
 - ./delete.sh

### Kubernetes Cluster and Authentication
 - gcloud container clusters delete hello-ruby
 - Delete project at https://console.cloud.google.com/kubernetes/
 - Remove gcloud SDK from local computer
 - Remove/cleanup ~/.kube/config
 - Remove permission grants for Google Cloud SDK and Google Auth Library at https://security.google.com/settings/security/permissions


## Changing Docker Prefix
In order to change the docker prefix (so the docker images can be generated using a different account), the following files need to be updated:
 - docker_build_image.sh
 - deployment.yaml
 - All the Dockerfile files under docker/


## Further Improvements
 - Run httpd container as non-root
 - Health checks http://kubernetes.io/docs/user-guide/liveness/
 - Logging
 - Metrics
 - Alerting
 - Kubernetes security http://blog.kubernetes.io/2016/08/security-best-practices-kubernetes-deployment.html
 - Redis security http://redis.io/topics/security
 - Docker security
