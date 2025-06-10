## 🚀 AWS EKS Cluster Provisioning using Terraform

This Terraform setup provisions an **Elastic Kubernetes Service (EKS)** cluster on AWS, complete with custom VPC, subnets, IAM roles, and node groups.


## 🔧 Infrastructure Overview

This repository covers the **Infrastructure as Code (IaC)** provisioning layer for a containerized application, including:

- 📦 **Amazon EKS** cluster
- 📍 **VPC, Subnets, Internet Gateway, Route Tables**
- 🔐 **IAM Roles and Policies for EKS Control Plane & Worker Nodes**
- 🔐 **Security Groups for Cluster and Workers**
- 🛠️ **Auto-scaling Node Group**
- 🖥️ **SSH Access support via EC2 Key Pair**



## 📁 File Structure

```bash
terraform/
├── main.tf          # All main infrastructure components
├── variables.tf     # Input variables
├── outputs.tf       # Handy output values post-deployment
├── versions.tf      # Terraform and provider version constraints
```



## 📦 Modules Created

- 🌐 **VPC** with public subnets
- 🔗 **Internet Gateway** and route table
- 🔐 **IAM roles** for:
  - EKS control plane
  - EKS worker nodes
- 🚀 **EKS cluster** and node group
- 🛡️ **Security groups**



## ✅ Deployment Instructions

**Note:** Make sure your AWS CLI is configured and you have Terraform >= 1.3.0

```bash
# Initialize Terraform
terraform init

# Check the plan
terraform plan -var="ssh_key_name=your-ec2-key-name"

# Apply the plan
terraform apply -var="ssh_key_name=your-ec2-key-name"
```