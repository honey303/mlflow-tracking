# Mlflow Tracking Server #

This repo consists of the files required to run Mlflow Tracking server locally as well as on Kubernetes cluster

## Prerequisites

* SQlite is used for Metadata Storage
* AWS S3 is used as the Artifact Storage


## Steps to run the app locally

```
git clone <git-repo>
cd mlflow-tracking

docker build -t <image-name> .
docker run -d -p 5000:5000 <image-id>

```

## Accessing the application 

* The app is running on http://localhost:5000




