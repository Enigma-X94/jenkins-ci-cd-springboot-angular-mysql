output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "kubeconfig" {
  value = aws_eks_cluster.eks.endpoint
}

output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

