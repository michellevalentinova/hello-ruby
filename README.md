# Docker Exercise

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
