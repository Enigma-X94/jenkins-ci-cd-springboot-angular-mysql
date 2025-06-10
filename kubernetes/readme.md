# ☸️ Kubernetes Deployment – EmployeeApp (Spring Boot)

This directory contains the Kubernetes manifest files for deploying the **EmployeeApp**, a Spring Boot application containerized into a Docker image and deployed to a Kubernetes cluster using the **`kubectl apply`** method.

## 🏗️ High-Level Architecture

- **Application Name:** `employeeapp`
- **Image:** Pulled from private DockerHub repo: `thedevopsrookie/employeeapp:latest`
- **Deployed as:** 2 replicas (Pods) behind a LoadBalancer service
- **Namespace:** `webapps`
- **Pull strategy:** `Always` (pull latest on every deploy)
- **Image Access:** DockerHub `regcred` secret
- **RBAC:** Role and RoleBinding for a Jenkins-connected ServiceAccount

## 🧰 Prerequisites

Make sure the following are correctly set up before deploying:

- ✅ Kubernetes cluster (Minikube, EKS, GKE, etc.)
- ✅ DockerHub image push is complete
- ✅ Namespace `webapps` exists (or create it)
- ✅ Secret `regcred` is created using:
```bash
kubectl create secret docker-registry regcred \
  --docker-username=<your-dockerhub-username> \
  --docker-password=<your-dockerhub-password> \
  --docker-email=you@example.com \
  --namespace=webapps