# Mlflow Tracking Server #

This repo consists of the files required to run Mlflow Tracking server locally as well as on Kubernetes cluster

## Usages

* SQlite is used to store Metadata
* AWS S3 is used as the Model Artifact Store


## Steps to run the app locally

```
git clone <git-repo>
cd mlflow-tracking

docker build -t <image-name> .
docker run -d -p 5000:5000 <image-id>

```

### Alternatively you can also run

```

docker run -d -p 5000:5000 honey3003/mlflow-tracking:v1

```

## Access the application 

* The app is running on http://localhost:5000


# Steps to run the app on k8s

* Set up minikube on your local machine or host it on a server
* Excute the steps mentioned below.


## Steps to run the app on k8s

```
git clone <git-repo>
cd mlflow-tracking


kubectl k8s-files/app-namespace.yml
kubectl k8s-files/app-deployment.yml
kubectl k8s-files/app-svc.yml

minikube service mlflow-svc -n mlflow

```






