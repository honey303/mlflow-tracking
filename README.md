# Mlflow Tracking Server #

This repo consists of the files required to run Mlflow Tracking server locally as well as on Kubernetes cluster

## Usages

* SQlite is used to store Metadata
* Amazon S3 is used as the Model Artifact Store


## Steps to run the app locally

```
git clone <git-repo>
cd mlflow-tracking

docker build -t <image-name> .
docker run -d -p 5000:5000 <image-id>

```

### Alternatively you can also excute the below command

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


*Note: Running the app locally worked perfectly fine. Although, hosting the app on minikube cluster didn't work as expected. In the sense I could curl <http:$(minikube-ip):5000> and got the same rsponse as I did while running the app locally on the instance.*






