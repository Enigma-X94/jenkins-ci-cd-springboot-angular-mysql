# 🚀 CI/CD Pipeline – Jenkins Automated Deployment Pipeline

This project demonstrates a **complete CI/CD pipeline** built using **Jenkins**, designed to automate the building, testing, scanning, artifact publishing, and deployment of a full-stack application to a **Kubernetes cluster** (hosted on AWS or local). 


## 📁 Pipeline Stage Overview

The pipeline (written in a `Jenkinsfile`) is composed of the following stages:

### 1. Git Checkout
Pulls the latest source code from the GitHub repository.

### 2. Start MySQL in Docker
Spins up a containerized MySQL server for backend integration.

### 3. Compile
Compiles the Spring Boot codebase using Maven.

### 4. Unit Testing
Executes backend unit tests under the `dev` environment profile.

### 5. Trivy File System Scan
Performs static security scan on the working directory using Trivy.

### 6. SonarQube Analysis
Analyzes code quality and reports issues for the backend via SonarQube.

### 7. Build Package
Packages the application’s JAR file using Maven while skipping tests.

### 8. Publish Artifact to Nexus
Deploys the compiled `.jar` to a Nexus repository using secure credentials.

### 9. Docker Build & Tag
Builds a Docker image of the Spring Boot backend using the included Dockerfile.

### 10. Trivy Image Scan
Scans the final Docker image for vulnerabilities before pushing.

### 11. Docker Push
Pushes the tagged Docker image to DockerHub.

### 12. Kubernetes Deployment
Applies the Kubernetes YAML manifest to a cluster using `kubectl apply`.

### 13. Verify Deployment
Runs K8s commands (`kubectl get pod` / `get svc`) to check deployment status.

### 14. Post Step: Clean-Up
Stops and removes the MySQL container created at the beginning to keep the environment clean.

## 🔐 Credentials (used inside Jenkins)

To run this pipeline securely, the following Jenkins credentials must be set:

| ID            | Type               | Purpose                          |
|---------------|--------------------|----------------------------------|
| `github-cred` |GitHub personal token / username+password | GitHub repo access |
|`docker-cred`|DockerHub credentials |Docker image push |
|`k8s-cred`|Kubernetes config credentials |Access K8s API |
|`maven-settings`| Maven settings config |Nexus registry connection |

## 🧪 How to Run This Pipeline

### 1. Install Jenkins with required plugins:
   - Git, Maven Integration, Docker Pipeline, Trivy (system), Kubernetes CLI, SonarQube Scanner, Pipeline

### 2. Configure your Jenkins environment:
   - Tools: Java 17, Maven 3, Sonar Scanner
   - Credentials: Add GitHub, DockerHub, Nexus, Kubernetes credentials

### 3. Create a new Jenkins **Pipeline Job** and link it to this project’s `Jenkinsfile`.

### 4. Watch the stages execute sequentially after triggering a build.



