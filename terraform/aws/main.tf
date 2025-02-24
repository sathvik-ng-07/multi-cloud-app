provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source       = "terraform-aws-modules/eks/aws"
  cluster_name = "multi-cloud-cluster"
  subnets      = ["subnet-abcde012", "subnet-bcde012a"]
  vpc_id       = "vpc-abcde012"

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}
