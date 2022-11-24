resource "aws_eks_cluster" "eks" {
  
name = "eks"
 role_arn = aws_iam_role.eks_cluster.arn

  version = var.eks_version

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access = true

    subnet_ids = [
      var.private_subnet_1,
      var.private_subnet_2
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.amazon_eks_cluster_policy
  ]
}

